*** Settings ***
Resource    ../Main.robot


*** Keywords ***
Quando preencher os dados
    [Arguments]    ${tipomov}    ${dataMov}    ${dataPag}
    ...    ${descricao}    ${interessado}    ${valor}    ${situacao}
    click              ${tiposMov}
    Run Keyword If    '${tipomov}' == 'Receita'        clickIndex    ${tiposMovimento}             0
    Run Keyword If    '${tipomov}' == 'Despesa'        clickIndex    ${tiposMovimento}             1
    Run Keyword If    '${dataMov}' != 'Null'           set           ${fieldDataMov}               ${dataMov}
    Run Keyword If    '${dataPag}' != 'Null'           set           ${fieldDataPagMov}            ${dataPag}
    Run Keyword If    '${descricao}' != 'Null'         set           ${fieldDescricaoMov}          ${FakerDescricao}
    Run Keyword If    '${interessado}' != 'Null'       set           ${fieldInteressadoMov}        ${FakeNome}
    Run Keyword If    '${valor}' != 'Null'             set           ${fieldValorMov}              ${FakerValor}
    click              ${fieldContaMov}
    clickText          ${optionContaMov}                  Automation teste
    Run Keyword If    '${situacao}' == 'Pago'          click         ${statusPagoMov}
    Run Keyword If    '${situacao}' == 'Pendente'      click         ${statusPendenteMov}
    Capture Page Screenshot
    click              ${btnSalvarMov}

Então o sistema exibirar a mensagem 
    [Arguments]    ${message}
    ${text}        getMessage     ${validaMessageMov}
    Should Be Equal As Strings    ${text}    ${message}

Então o sistema exibirar as mensagens 
    [Arguments]    ${message}     ${message1}
    ${text}     getTextIndex      ${validaMessage1Mov}    0
    Should Be Equal As Strings    ${text}    ${message}
    ${text1}    getTextIndex      ${validaMessage1Mov}    1
    Should Be Equal As Strings    ${text1}    ${message1}


    