*** Settings ***
Library            SeleniumLibrary
Resource           ../PageObjects/loginPage.robot
Resource           ../PageObjects/homePage.robot
Resource           ../Resource/Settings.robot
Test Setup         Start Automation
Test Teardown      Stop Automation

*** Test Cases ***
Login com sucesso no Seu Barriga
    Dado que o usuario informe os dados para o Login    teste@teste.com    123456
    Quando o usuario clicar no botão Entrar
    Entao o sistema exibira a mensagem de sucesso do Login    Bem vindo, thiago!

Login com campo Email em branco
    Dado que o usuario informe os dados para o Login    None    123456    
    Quando o usuario clicar no botão Entrar
    Entao o sistema exibira a mensagem de erro  Email é um campo obrigatório

Login com campo Senha em branco
    Dado que o usuario informe os dados para o Login    teste@teste.com    None    
    Quando o usuario clicar no botão Entrar
    Entao o sistema exibira a mensagem de erro  Senha é um campo obrigatório

Login com campo Email e Senhas Incorretos
    Dado que o usuario informe os dados para o Login    teste@com    123    
    Quando o usuario clicar no botão Entrar
    Entao o sistema exibira a mensagem de erro  Problemas com o login do usuário
    


