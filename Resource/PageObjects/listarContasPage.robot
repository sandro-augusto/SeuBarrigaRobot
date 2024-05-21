*** Settings ***
Resource    ../Main.robot

*** Keywords ***
Então sera visualizado a mensagem
    [Arguments]                   ${message}
    ${text}                       getMessage            ${validaMessageContas}
    Should Be Equal As Strings    ${text}               ${message}

Quando o usuário verificar a tela
    ${urlAtual}   Get Location
    Should Be Equal As Strings    ${urlListarContas}    ${urlAtual}
    Capture Page Screenshot

Então o sistema exibira as contas cadastradas
    Element Should Be Visible     ${tabelaContas}

E clicar em Editar
    clickIndex                    ${editarConta}         1

E clicar em Limpar
    clear                          ${fieldNomeEditContas}


Quando o usuário clicar em Excluir a Conta desejada
    Capture Page Screenshot
    clickIndex                    ${excluirConta}         30