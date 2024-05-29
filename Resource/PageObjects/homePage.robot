*** Settings ***
Resource    ../Main.robot

*** Keywords ***
Então o sistema exibira a mensagem de sucesso do Login
    [Arguments]                   ${message}
    ${Text}                       getMessage                ${validaMessageHome}
    Should Be Equal As Strings    ${Text}                   ${message}


Dado que o usuário clique em Adicionar contas
    click                         ${btnContasHome}
    clickText                     ${optionContasHome}            Adicionar
    Screenshot

Dado que o usuário clique em Listar contas
    click                         ${btnContasHome}
    clickIndex                    ${optionContasHome}             1
    Screenshot

Dado que o usuário clique em Criar Movimentação
    clickIndex                    ${btnMovimentacaoResumoHome}    2
    Screenshot

Dado que o usuario clique na opcao Resumo Mensal 
    clickIndex                    ${btnMovimentacaoResumoHome}    3
    Sleep    10s
    Screenshot