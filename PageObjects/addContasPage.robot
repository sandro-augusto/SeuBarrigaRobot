*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Resource    ../Resource/Actions.robot
Resource    ../Elements/addContasElements.robot

*** Keywords ***
Quando preencher o campo Nome
    [Arguments]    ${conta}
    ${urlAtual}    Get Location
    Should Be Equal As Strings    ${urlAtual}    ${url}
    ${CompNome}    FakerLibrary.First Name
    ${FakeNome}    Catenate    Teste     ${CompNome}
    Run Keyword If    '${conta}' != 'Null'    set    ${fieldNome}    ${FakeNome}
    Capture Page Screenshot 
    click    ${btnSalvar}



