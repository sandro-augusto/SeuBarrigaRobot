*** Settings ***
Resource         ../Resource/Main.robot
Test Setup         Start Automation
Test Teardown      Stop Automation

*** Test Cases ***
Login com sucesso no Seu Barriga
    Dado que o usuario informe os dados para o Login          ${emailCorreto}      ${senhaCorreta}
    Quando o usuario clicar no botão Entrar
    Então o sistema exibira a mensagem de sucesso do Login    Bem vindo, thiago!

Login com campo Email em branco
    Dado que o usuario informe os dados para o Login          None                 ${senhaCorreta}    
    Quando o usuario clicar no botão Entrar
    Então o sistema exibira a mensagem de erro                Email é um campo obrigatório

Login com campo Senha em branco
    Dado que o usuario informe os dados para o Login          ${emailCorreto}      None    
    Quando o usuario clicar no botão Entrar
    Então o sistema exibira a mensagem de erro                Senha é um campo obrigatório

Login com campo Email e Senhas Incorretos
    Dado que o usuario informe os dados para o Login          ${emailIncorreto}    ${senhaIncorreta}    
    Quando o usuario clicar no botão Entrar
    Então o sistema exibira a mensagem de erro                Problemas com o login do usuário
    


