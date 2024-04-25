*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary    locale=pt_BR

# Elements
Resource    Elements/cadastroElements.robot
Resource    Elements/addContasElements.robot
Resource    Elements/criarMovElements.robot
Resource    Elements/editarContasElements.robot
Resource    Elements/homeElements.robot
Resource    Elements/listarContasElements.robot
Resource    Elements/loginElements.robot
Resource    Elements/resumoMensalElements.robot


# PageObjects
Resource    PageObjects/addContasPage.robot
Resource    PageObjects/cadastroPage.robot
Resource    PageObjects/criarMovPage.robot
Resource    PageObjects/editarContaPage.robot
Resource    PageObjects/homePage.robot
Resource    PageObjects/listarContasPage.robot
Resource    PageObjects/loginPage.robot
Resource    PageObjects/resumoMensalPage.robot

# Resource
Resource    ../Resource/Actions.robot
Resource    ../Resource/Settings.robot
Resource    ../Resource/Utils.robot
Resource    ../Resource/Data.robot
