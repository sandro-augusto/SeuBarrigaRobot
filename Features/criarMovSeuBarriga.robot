*** Settings ***
Resource         ../Resource/Main.robot
Test Setup       Start Automation Login
Test Teardown    Stop Automation

*** Test Cases ***
Cadastro de Movimentação com Sucesso
    Dado que o usuário clique em Criar Movimentação
    Quando preencher os dados    Receita    18/09/2023    20/09/2023    ${FakerDescricao}    ${FakeNome}    ${FakerValor}    Pago
    Então o sistema exibirar a mensagem    Movimentação adicionada com sucesso!

Cadastro de Movimentação com campo Data de Movimentação em branco
    Dado que o usuário clique em Criar Movimentação
    Quando preencher os dados    Receita    Null    20/10/2023    ${FakerDescricao}    ${FakeNome}    ${FakerValor}    Pago
    Então o sistema exibirar a mensagem    Data da Movimentação é obrigatório

Cadastro de Movimentação com campo Data de Pagamento em branco
    Dado que o usuário clique em Criar Movimentação
    Quando preencher os dados    Receita    10/08/2023    Null    ${FakerDescricao}    ${FakeNome}    ${FakerValor}    Pago
    Então o sistema exibirar a mensagem    Data do pagamento é obrigatório

Cadastro de Movimentação com campo Descrição em branco
    Dado que o usuário clique em Criar Movimentação
    Quando preencher os dados    Receita    10/08/2023    20/10/2023    Null    ${FakeNome}    ${FakerValor}    Pago
    Então o sistema exibirar a mensagem    Descrição é obrigatório

Cadastro de Movimentação com campo Interessao em branco
    Dado que o usuário clique em Criar Movimentação
    Quando preencher os dados    Receita    10/08/2023    20/10/2023    ${FakerDescricao}    Null    ${FakerValor}    Pago
    Então o sistema exibirar a mensagem    Interessado é obrigatório

Cadastro de Movimentação com campo Valor em branco
    Dado que o usuário clique em Criar Movimentação
    Quando preencher os dados    Receita    10/08/2023    20/10/2023    ${FakerDescricao}    ${FakeNome}    Null    Pago
    Então o sistema exibirar as mensagens    Valor é obrigatório    Valor deve ser um número

