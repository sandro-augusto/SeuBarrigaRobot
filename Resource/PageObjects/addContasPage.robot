*** Settings ***
Resource    ../Main.robot

*** Keywords ***
Quando preencher o campo Nome
    [Arguments]                   ${conta}
    ${urlAtual}                   Get Location
    Should Be Equal As Strings    ${urlAtual}           ${urlAddContas}
    ${CompNome}                   FakerLibrary.First Name
    ${FakeNome}                   Catenate    Teste     ${CompNome}
    Run Keyword If    '${conta}' != 'Null'    set       ${fieldNomeContas}    ${FakeNome}
    Capture Page Screenshot 
    click                         ${btnSalvarContas}



