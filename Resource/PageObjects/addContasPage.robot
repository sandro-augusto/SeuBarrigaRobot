*** Settings ***
Resource    ../Main.robot

*** Keywords ***
Quando preencher o campo Nome
    [Arguments]                   ${conta}
    ${urlAtual}                   Get Location
    Should Be Equal As Strings    ${urlAtual}           ${urlAddContas}
    Run Keyword If    '${conta}' != 'Null'    set       ${fieldNomeContas}    ${conta}
    Capture Page Screenshot 
    click                         ${btnSalvarContas}



