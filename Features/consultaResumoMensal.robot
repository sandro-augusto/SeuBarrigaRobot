*** Settings ***
Resource         ../PageObjects/resumoMensalPage.robot
Resource         ../Resource/Settings.robot
Test Setup       Start Automation Login
Test Teardown    Stop Automation

*** Test Cases ***
Consulta das Movimentações do Resumo Mensal
    Dado que o usuario clique na opcao Resumo Mensal 
    Quando o usuario consultar as movimentações   9
    Então o sistema exibira as movimentações pesquisadas

Consulta de um mês sem Movimentações
    Dado que o usuario clique na opcao Resumo Mensal 
    Quando o usuario consultar as movimentações   0
    Então o sistema o grid vazio