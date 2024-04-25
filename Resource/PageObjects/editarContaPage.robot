*** Settings ***
Resource    ../Main.robot

*** Keywords ***
Quando Editar o campo Nome
    [Arguments]       ${conta}
    Fakers
    ${FullName}       Catenate                Editar                 ${FakeNome}
    ${urlAtual}       Get Location
    Should Contain    ${urlAtual}             ${urlEditarConta}
    clear             ${fieldNome}
    Run Keyword If    '${conta}' != 'Null'    set    ${fieldNome}    ${FullName}
    Capture Page Screenshot
    click             ${btnSalvar}