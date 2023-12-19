*** Settings ***
Library          SeleniumLibrary
Library          FakerLibrary    locale=pt_BR
Resource         ../Resource/Settings.robot
Resource         ../PageObjects/criarMovPage.robot
Resource         ../Elements/criarMovElements.robot
Test Setup       Start Automation Login
Test Teardown    Stop Automation

*** Test Cases ***
Cadastro de Movimentação com Sucesso
    Dado que o usuário clique em Criar Movimentação
    Quando preencher os dados
    Então o sistema exibirar a mensagem
    