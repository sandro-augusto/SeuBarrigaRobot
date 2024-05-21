*** Settings ***
Resource    ../Main.robot

*** Keywords ***

Dado que o usuário clique em Novo Cadastro
    Wait Until Element Is Visible    ${fieldEmailCad}
    Capture Page Screenshot
    ClickIndex                       ${btnNovoUsuarioCad}     1
                                     ${urlAtual}              Get Location
    Should Be Equal As Strings       ${urlAtual}              ${URL_cadastro}
    Capture Page Screenshot
    Wait Until Element Is Visible    ${fieldNomeCad}
    

Quando preencher os dados para o cadastro
    [Arguments]    ${nome}    ${email}    ${senha}
    Run Keyword If    '${nome}' != 'None'     Input Text    ${fieldNomeCad}     ${nome}
    Run Keyword If    '${email}' != 'None'    Input Text    ${fieldEmailCad}    ${email}
    Run Keyword If    '${senha}' != 'None'    Input Text    ${fieldSenhaCad}    ${senha}
    Capture Page Screenshot
    Click Element                                           ${btnCadastrarCad}

Então o sistema exibira a mensagem 
    [Arguments]                   ${message}
    ${text}       getMessage      ${validaMessageCad}
    Should Be Equal As Strings    ${text}    ${message}


        



