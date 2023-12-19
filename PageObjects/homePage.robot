*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/Actions.robot
Resource    ../Elements/homeElements.robot

*** Keywords ***
Entao o sistema exibira a mensagem de sucesso do Login
    [Arguments]    ${message}
    ${Text}    Get Text    ${validaMessage}
    Should Be Equal As Strings    ${Text}    ${message}


Dado que o usuário clique em Adicionar contas
    click         ${btnContas}
    clickText     ${optionContas}    Adicionar
    Capture Page Screenshot

Dado que o usuário clique em Listar contas
    click         ${btnContas}
    clickIndex    ${optionContas}    1
    Capture Page Screenshot

Dado que o usuário clique em Criar Movimentação
    click         ${btnMovimentacao}
    Capture Page Screenshot
