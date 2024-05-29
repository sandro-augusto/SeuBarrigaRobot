<p align="center">
  <img src="image.png" alt="Alt Text">
</p>
<div align="center">

  <h1>AUTOMAÇÃO SEU BARRIGA WEB - ROBOT FRAMEWORK - SELENIUM</h1>
</div>

## PRÉ-REQUISITOS
Requisitos de software e hardware necessários para executar este projeto de automação


* [Python 3.11](https://www.python.org/downloads/ "Python") ou superior
* [Robot Framework 6.1](https://robotframework.org/robotframework/ "Robot Framework") ou superior
* Biblioteca [SetupTools](https://pypi.org/project/setuptools/ "SetupTools")
* Biblioteca [Faker Library](https://pypi.org/project/robotframework-faker/ "Faker Library")
* [Vs Code](https://code.visualstudio.com/download) IDE
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

Com o prompt de comando acesse a pasta do projeto e execute o comando abaixo para rodar um cenário com a tag específica.

Ex.:
```sh default
robot -d Results -t "Login com sucesso no Seu Barriga" features/LoginSeuBarriga.robot
```


## COMANDO PARA EXECUÇÃO DE TESTES COM ALLURE

Com o prompt de comando acesse a pasta do projeto e execute o comando abaixo para rodar os testes com o Relatório Allure.

Ex.:
```sh default
Remove-Item -Path allure\allure-results\* -Recurse -Force
robot --listener "allure_robotframework;allure/allure-results"  .\Features\
allure serve allure/allure-results
```

## EVIDÊNCIAS
Os arquivos com as evidências ficam localizados na pasta Results do projeto, esta pasta só é criada depois da primeira execução, nesta pasta se encontram os logs, o report html com os status da execução e os prins evidênciando a execução.
