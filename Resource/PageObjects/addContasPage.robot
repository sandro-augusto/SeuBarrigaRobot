*** Settings ***
Resource    ../Main.robot

*** Keywords ***
Quando preencher o campo Nome
    [Arguments]                   ${conta}
    ${urlAtual}                   Get Location
    Should Be Equal As Strings    ${urlAtual}           ${urlAddContas}
    Run Keyword If    '${conta}' != 'Null'    set       ${fieldNomeContas}    ${conta}
    Screenshot 
    click                         ${btnSalvarContas}

Add contas
    Dado que o usuário clique em Adicionar contas
    Quando preencher o campo Nome                   AAA do Teste
    Então sera visualizado a mensagem               Conta adicionada com sucesso!
    Sleep    3s

Excluir contas
    Sleep    3s
    Dado que o usuário clique em Listar contas
    Quando o usuário clicar em Excluir a Conta desejada
    Então sera visualizado a mensagem               Conta removida com sucesso!  
    



