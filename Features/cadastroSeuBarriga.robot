*** Settings ***
Resource         ../Resource/Main.robot
Test Setup       Start Automation
Test Teardown    Stop Automation


*** Test Cases ***
    
Cadastro com Sucesso
    Dado que o usuário clique em Novo Cadastro
    Quando preencher os dados para o cadastro    ${FakeNome}    ${FakeEmail}    ${FakeSenha} 
    Então o sistema exibira a mensagem           Usuário inserido com sucesso

Cadastro com o campo Nome vazio
    Dado que o usuário clique em Novo Cadastro
    Quando preencher os dados para o cadastro    None    ${FakeEmail}    ${FakeSenha} 
    Então o sistema exibira a mensagem           Nome é um campo obrigatório

Cadastro com o campo Email vazio
    Dado que o usuário clique em Novo Cadastro
    Quando preencher os dados para o cadastro    ${FakeNome}    None    ${FakeSenha} 
    Então o sistema exibira a mensagem           Email é um campo obrigatório

Cadastro com o campo Senha vazio
    Dado que o usuário clique em Novo Cadastro
    Quando preencher os dados para o cadastro    ${FakeNome}    ${FakeEmail}    None 
    Então o sistema exibira a mensagem           Senha é um campo obrigatório