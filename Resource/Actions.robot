*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
waitElement
    [Arguments]                      ${elements}       ${time}
    Wait Until Element Is Enabled    ${elements}       ${time}

clickIndex
    [Arguments]                      ${element}        ${index}
    waitElement                      ${element}        10s
    ${elementos}=                    Get WebElements   ${element}
    ${elemento}=                     Set Variable      ${elementos}[${index}]
    Click Element                    ${elemento}

click
    [Arguments]                      ${element}
    waitElement                      ${element}        10s
    Click Element                    ${element}

clickText
    [Arguments]                      ${element}        ${text}
    waitElement                      ${element}        10s
    ${message}                       Get Text          ${element}
    Click Element                    ${element}        

set
    [Arguments]                      ${element}        ${text}
    waitElement                      ${element}        10s
    Input Text                       ${element}        ${text}

clear
    [Arguments]                      ${element}
    waitElement                      ${element}        10s
    Clear Element Text               ${element}    

    
