# AUTOMAÇÃO SEU BARRIGA WEB - ROBOT FRAMEWORK - SELENIUM
## PRÉ-REQUISITOS
Requisitos de software e hardware necessários para executar este projeto de automação


* Python 3.11 ou superior
* Robot Framework 6.1 ou superior
* Biblioteca setuptools
* Biblioteca Faker 
* Vs Code IDE
* Extensions Vs Code
    * Robot Framework Language
    * Python

## ESTRUTURA DO PROJETO

| Diretório                         | Finalidade                                                                                                 | 
|--------------------------------|------------------------------------------------------------------------------------------------------------|
| Features           | Local onde são descritas as features "Test Cases" em formato BDD                                           |
| PageObjects               | Local onde devem ser criados os Keywords para cada step                   |
| Resource             | Local onde estão criados os recursos de configuração do projeto                                                           |
| Results             | Local onde são criadas as evidências e relatórios do projeto                                        |
| Elements            | Local onde deverão ser incluidos os elementos usados na Page        |


## COMANDO PARA EXECUTAR OS TESTES

Com o prompt de comando acesse a pasta do projeto e execute o comando abaixo para rodar os testes automatizados.

```sh default
robot -d Results ./features/
```

## COMANDO PARA EXECUÇÃO DE TESTES COM TAGS

Com o prompt de comando acesse a pasta do projeto e execute o comando abaixo para rodar um cenário com a tag específica

Ex.:
```sh default
robot -d Results -t "Login com sucesso no Seu Barriga" features/LoginSeuBarriga.robot
```

## EVIDÊNCIAS
Os arquivos com as evidências ficam localizados na pasta Results do projeto, esta pasta só é criada depois da primeira execução. Lá se encontram os Logs. o report html com os status da execução e os prins evidênciando a execução.
