*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Resource    ../Resource/Actions.robot
Resource    ../Elements/criarMovElements.robot


*** Keywords ***
Quando preencher os dados
    [Arguments]    ${tipomov}    ${dataMov}    ${dataPag}
    ...    ${descricao}    ${interessado}    ${valor}    ${conta}    ${situacao}

    Run Keyword If    '${tipomov}' == 'Receita'        clickIndex    ${tipomov}             0
    Run Keyword If    '${tipomov}' == 'Despesa'        clickIndex    ${tipomov}             1
    Run Keyword If    '${dataMov}' != 'Null'           set           ${fieldDataMov}        ${dataMov}
    Run Keyword If    '${dataPag}' != 'Null'           set           ${fieldDAtaPag}        ${dataPag}
    Run Keyword If    '${descricao}' != 'Null'         set           ${fieldDescricao}      ${descricao}
    Run Keyword If    '${interessado}' != 'Null'       set           ${fieldInteressado}    ${interessado}
    Run Keyword If    '${valor}' != 'Null'             set           ${fieldValor}          ${dataMov}
    click              ${fieldConta}
    pressEnter
    Run Keyword If    '${situacao}' == 'Pago'          clickIndex    $element                0
    Run Keyword If    '${situacao}' == 'Pendente'      clickIndex    $element                0
    click              ${btnSalvar}