*** Settings ***
Resource    ./Main.robot


*** Keywords ***
waitElement
    [Arguments]                      ${elements}       ${time}
    Wait Until Element Is Visible    ${elements}       ${time}

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
    ${text}                          Get Text          ${element}
    Click Element                    ${element}     

getMessage
    [Arguments]                      ${element}        
    waitElement                      ${element}        10s
    ${text}=                         Get Text          ${element}
    [Return]                         ${text} 

getTextIndex
    [Arguments]                      ${element}        ${index}
    waitElement                      ${element}        10s
    ${elementos}=                    Get WebElements   ${element}
    ${elemento}=                     Set Variable      ${elementos}[${index}]
    ${text}=                         Get Text          ${elemento}
    [Return]                         ${text}

set
    [Arguments]                      ${element}        ${text}
    waitElement                      ${element}        10s
    Input Text                       ${element}        ${text}

clear
    [Arguments]                      ${element}
    waitElement                      ${element}        10s
    Clear Element Text               ${element}   

Screenshot
    Capture Page Screenshot          ${OUTPUT_DIR}/screenshot.png
    Attach File                      ${OUTPUT_DIR}/screenshot.png
