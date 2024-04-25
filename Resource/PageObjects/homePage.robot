*** Settings ***
Resource    ../Main.robot

*** Keywords ***
Então o sistema exibira a mensagem de sucesso do Login
    [Arguments]                   ${message}
    ${Text}                       getMessage                ${validaMessage}
    Should Be Equal As Strings    ${Text}                   ${message}


Dado que o usuário clique em Adicionar contas
    click                         ${btnContas}
    clickText                     ${optionContas}            Adicionar
    Capture Page Screenshot

Dado que o usuário clique em Listar contas
    click                         ${btnContas}
    clickIndex                    ${optionContas}             1
    Capture Page Screenshot

Dado que o usuário clique em Criar Movimentação
    clickIndex                    ${btnMovimentacaoResumo}    2
    Capture Page Screenshot

Dado que o usuario clique na opcao Resumo Mensal 
    clickIndex                    ${btnMovimentacaoResumo}    3
    Sleep    10s
    Capture Page Screenshot