*** Settings ***
Resource         ../Resource/Main.robot
Test Setup       Start Automation Login
Test Teardown    Stop Automation

*** Test Cases ***
Consulta das Movimentações do Resumo Mensal
    Dado que o usuario clique na opcao Resumo Mensal 
    Quando o usuario consultar as movimentações   setembro    2023
    Então o sistema exibira as movimentações pesquisadas

# Consulta de um mês sem Movimentações
#     Dado que o usuario clique na opcao Resumo Mensal 
#     Quando o usuario consultar as movimentações   0
#     Então o sistema o grid vazio