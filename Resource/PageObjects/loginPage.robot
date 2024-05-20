*** Settings ***
Resource    ../Main.robot


*** Keywords ***
Dado que o usuario informe os dados para o Login
    [Arguments]        ${email}    ${senha}
    Run Keyword If    '${email}' != 'None'    Input Text    ${fieldEmailLogin}    ${email}
    Run Keyword If    '${senha}' != 'None'    Input Text    ${fieldSenhaLogin}    ${senha}
    Capture Page Screenshot
    
Quando o usuario clicar no botão Entrar
    Click    ${btnEntrarLogin}

Então o sistema exibira a mensagem de erro
    [Arguments]                   ${message}
    ${Text}                       getMessage     ${validaMessageLogin}
    Should Be Equal As Strings    ${Text}        ${message}

