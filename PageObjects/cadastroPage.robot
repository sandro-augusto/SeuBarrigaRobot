*** Settings ***
Library     FakerLibrary
Resource    ../Resource/Actions.robot
Resource    ../Elements/cadastroElements.robot

*** Keywords ***
Dado que o usuário clique em Novo Cadastro
    Wait Until Element Is Visible    ${fieldEmail}
    Capture Page Screenshot
    ClickIndex                       ${btnNovoUsuario}    1
                                     ${urlAtual}          Get Location
    Should Be Equal As Strings       ${urlAtual}          ${URL_cadastro}
    Capture Page Screenshot
    Wait Until Element Is Visible    ${fieldNome}
    

Quando preencher os dados para o cadastro
    [Arguments]    ${nome}    ${email}    ${senha}
    ${FakeNome}     FakerLibrary.Name
    ${FakeEmail}    FakerLibrary.Email
    ${compSenha}    FakerLibrary.Numerify      text=##
    ${FakeSenha}=   Catenate     Seubarriga    ${compSenha}
    
    Run Keyword If    '${nome}' != 'None'     Input Text    ${fieldNome}     ${FakeNome}
    Run Keyword If    '${email}' != 'None'    Input Text    ${fieldEmail}    ${FakeEmail}
    Run Keyword If    '${senha}' != 'None'    Input Text    ${fieldSenha}    ${FakeSenha}
    Capture Page Screenshot
    Click Element                                           ${btnCadastrar}

Então o sistema exibira a mensagem 
    [Arguments]                   ${message}
    ${text}       getMessage      ${validaMessage}
    Should Be Equal As Strings    ${text}    ${message}


        



