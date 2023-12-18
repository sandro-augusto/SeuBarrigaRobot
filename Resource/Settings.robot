*** Settings ***
Library     SeleniumLibrary
Resource    ../PageObjects/loginPage.robot
Resource    ../PageObjects/homePage.robot

*** Variables ***
${URL}    https://seubarriga.wcaquino.me/login
${Browser}    chrome

*** Keywords ***
Start Automation
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    # Set Selenium Speed    0.5
    
Stop Automation
    Capture Page Screenshot
    Close Browser

Start Automation Login
    Start Automation
    Dado que o usuario informe os dados para o Login    teste@teste.com    123456
    Quando o usuario clicar no botão Entrar
    Entao o sistema exibira a mensagem de sucesso do Login    Bem vindo, thiago!