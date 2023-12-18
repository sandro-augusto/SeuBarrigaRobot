*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Resource    ../Resource/Actions.robot
Resource    ../Elements/editarContasElements.robot

*** Keywords ***
Quando Editar o campo Nome
    [Arguments]       ${conta}
    ${FakeNome}       FakerLibrary.Name
    ${urlAtual}       Get Location
    Should Contain    ${urlAtual}             ${urlEditarConta}
    clear             ${fieldNome}
    Run Keyword If    '${conta}' != 'Null'    set    ${fieldNome}    ${FakeNome}
    Capture Page Screenshot
    click             ${btnSalvar}