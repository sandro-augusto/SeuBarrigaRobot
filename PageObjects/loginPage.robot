*** Settings ***
Library     SeleniumLibrary
Resource    ../Resource/Actions.robot
Resource    ../Elements/loginElements.robot

*** Keywords ***
Dado que o usuario informe os dados para o Login
    [Arguments]    ${email}    ${senha}
    Run Keyword If    '${email}' != 'None'    Input Text    ${fieldEmail}    ${email}
    Run Keyword If    '${senha}' != 'None'    Input Text    ${fieldSenha}    ${senha}
    Capture Page Screenshot
    
Quando o usuario clicar no botão Entrar
    Click    ${btnEntrar}

Entao o sistema exibira a mensagem de erro
    [Arguments]    ${message}
    ${Text}    Get Text    ${validaMessage}
    Should Be Equal As Strings    ${Text}    ${message}

    

