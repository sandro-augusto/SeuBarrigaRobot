*** Settings ***
Resource         ../Resource/Main.robot
Test Setup       Start Automation Login
Test Teardown    Stop Automation

*** Test Cases ***
Criando Conta com Sucesso
    Dado que o usuário clique em Adicionar contas
    Quando preencher o campo Nome                   Teste ${FakeNome}${FakerValor}
    Então sera visualizado a mensagem               Conta adicionada com sucesso!
    Excluir contas

# Validando o campo Nome da criação de Nova Conta
#     Dado que o usuário clique em Adicionar contas
#     Quando preencher o campo Nome                   Null
#     Então sera visualizado a mensagem               Informe o nome da conta

# Visualizando Lista de Contas com Sucesso
#     Dado que o usuário clique em Listar contas
#     Quando o usuário verificar a tela
#     Então o sistema exibira as contas cadastradas

# Editando Conta com Sucesso
#     Dado que o usuário clique em Listar contas
#     E clicar em Editar 
#     Quando Editar o campo Nome                      Editar ${FakeNome}${FakerValor}
#     Então sera visualizado a mensagem               Conta alterada com sucesso!

# Validando o campo Nome do Editar
#     Dado que o usuário clique em Listar contas
#     E clicar em Editar 
#     E clicar em Limpar
#     Quando Editar o campo Nome                      Null
#     Então sera visualizado a mensagem               Informe o nome da conta

# Excluindo Conta com Sucesso
#     Add contas
#     Dado que o usuário clique em Listar contas
#     Quando o usuário clicar em Excluir a Conta desejada
#     Então sera visualizado a mensagem               Conta removida com sucesso!        




