*** Settings ***
Resource    Main.robot

*** Variables ***
${emailCorreto}      teste@teste.com
${emailIncorreto}    teste@com
${senhaCorreta}      123456
${senhaIncorreta}    123
${URL}               https://seubarriga.wcaquino.me/login
${HeadLess}          headlesschrome
${chrome}            chrome