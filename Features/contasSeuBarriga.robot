*** Settings ***
Library          SeleniumLibrary
Library          FakerLibrary    locale=pt_BR
Resource         ../PageObjects/addContasPage.robot
Resource         ../PageObjects/listarContasPage.robot
Resource         ../Resource/Settings.robot
Resource         ../PageObjects/editarContaPage.robot
Resource         ../Elements/homeElements.robot
Test Setup       Start Automation Login
Test Teardown    Stop Automation

*** Test Cases ***
Criando Conta com Sucesso
    Dado que o usuário clique em Adicionar contas
    Quando preencher o campo Nome                   ${FakeNome}
    Entao sera visualizado a mensagem               Conta adicionada com sucesso!

Validando o campo Nome da criação de Nova Conta
    Dado que o usuário clique em Adicionar contas
    Quando preencher o campo Nome                   Null
    Entao sera visualizado a mensagem               Informe o nome da conta

Visualizando Lista de Contas com Sucesso
    Dado que o usuário clique em Listar contas
    Quando o usuário verificar a tela
    Então o sistema exibira as contas cadastradas

Editando Conta com Sucesso
    Dado que o usuário clique em Listar contas
    E clicar em Editar 
    Quando Editar o campo Nome                      ${FakeNome}
    Entao sera visualizado a mensagem               Conta alterada com sucesso!

Validando o campo Nome do Editar
    Dado que o usuário clique em Listar contas
    E clicar em Editar 
    Quando Editar o campo Nome                      Null
    Entao sera visualizado a mensagem               Informe o nome da conta

Excluindo Conta com Sucesso
    Dado que o usuário clique em Adicionar contas
    Quando preencher o campo Nome                   Teste Automation Robot
    Entao sera visualizado a mensagem               Conta adicionada com sucesso!
    
    Dado que o usuário clique em Listar contas
    Quando o usuário clicar em Excluir a Conta desejada
    Entao sera visualizado a mensagem               Conta removida com sucesso!        




