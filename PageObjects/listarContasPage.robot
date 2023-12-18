*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Resource    ../Resource/Actions.robot
Resource    ../Elements/listarContasElements.robot

*** Keywords ***
Entao sera visualizado a mensagem
    [Arguments]    ${message}
    ${text}                       Get Text    ${validaMessage}
    Should Be Equal As Strings    ${text}     ${message}

Quando o usuário verificar a tela
    ${urlAtual}   Get Location
    Should Be Equal As Strings    ${urlListarContas}    ${urlAtual}
    Capture Page Screenshot

Então o sistema exibira as contas cadastradas
    Element Should Be Visible    id:tabelaContas
    Capture Page Screenshot

E clicar em Editar
    clickIndex    ${editarConta}    1


Quando o usuário clicar em Excluir a Conta desejada
    clickIndex    ${excluirConta}    1