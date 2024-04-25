*** Settings ***
Resource    ../Main.robot


*** Keywords ***
Quando preencher os dados
    [Arguments]    ${tipomov}    ${dataMov}    ${dataPag}
    ...    ${descricao}    ${interessado}    ${valor}    ${situacao}
    Fakers
    click              ${tipo}
    Run Keyword If    '${tipomov}' == 'Receita'        clickIndex    ${tiposMovimento}             0
    Run Keyword If    '${tipomov}' == 'Despesa'        clickIndex    ${tiposMovimento}             1
    Run Keyword If    '${dataMov}' != 'Null'           set           ${fieldDataMov}        ${dataMov}
    Run Keyword If    '${dataPag}' != 'Null'           set           ${fieldDAtaPag}        ${dataPag}
    Run Keyword If    '${descricao}' != 'Null'         set           ${fieldDescricao}      ${FakerDescricao}
    Run Keyword If    '${interessado}' != 'Null'       set           ${fieldInteressado}    ${FakeNome}
    Run Keyword If    '${valor}' != 'Null'             set           ${fieldValor}          ${FakerValor}
    click              ${fieldConta}
    clickText          ${optionConta}                  Automation teste
    Run Keyword If    '${situacao}' == 'Pago'          click         ${statusPago}
    Run Keyword If    '${situacao}' == 'Pendente'      click         ${statusPendente}
    Capture Page Screenshot
    click              ${btnSalvar}

Então o sistema exibirar a mensagem 
    [Arguments]    ${message}
    ${text}        getMessage     ${validaMessage}
    Should Be Equal As Strings    ${text}    ${message}

Então o sistema exibirar as mensagens 
    [Arguments]    ${message}     ${message1}
    ${text}     getTextIndex      ${validaMessage1}    0
    Should Be Equal As Strings    ${text}    ${message}
    ${text1}    getTextIndex      ${validaMessage1}    1
    Should Be Equal As Strings    ${text1}    ${message1}


    