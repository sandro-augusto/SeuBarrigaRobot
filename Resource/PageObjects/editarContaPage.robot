*** Settings ***
Resource    ../Main.robot

*** Keywords ***
Quando Editar o campo Nome
    [Arguments]       ${conta}
    ${urlAtual}       Get Location
    Run Keyword If    '${conta}' != 'Null'    set    ${fieldNomeEditContas}    ${conta}
    Capture Page Screenshot
    click             ${btnSalvarEditContas}