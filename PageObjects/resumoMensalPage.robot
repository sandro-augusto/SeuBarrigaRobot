*** Settings ***
Resource    ../Resource/Actions.robot
Resource    ../Elements/resumoMensalElements.robot

*** Keywords ***
Quando o usuario consultar as movimentações
    [Arguments]       ${mes}
    ${url_atual}      Get Location
    Should Be Equal As Strings    ${url}    ${url_atual}
    clickIndex        ${fieldMes}    ${mes}
    Capture Page Screenshot
    click             ${btnBuscar}

Então o sistema exibira as movimentações pesquisadas
    Element Should Be Visible        ${validaMovimentacao}

Então o sistema o grid vazio
    Element Should Not Be Visible    ${validaMovimentacao}

