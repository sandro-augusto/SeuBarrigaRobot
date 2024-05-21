*** Settings ***
Resource    ../Main.robot

*** Keywords ***
Quando o usuario consultar as movimentações
    [Arguments]                                   ${mes}               ${ano}
    ${url_atual}                                  Get Location
    Should Be Equal As Strings                    ${urlResumo}         ${url_atual}
    Run Keyword If     '${mes}' == 'setembro'     clickIndex           ${fieldMesResumo}          8
    Run Keyword If     '${ano}' == '2023'         clickIndex           ${fieldAnoResumo}          13
    Capture Page Screenshot
    click                                         ${btnBuscarResumo}

Então o sistema exibira as movimentações pesquisadas
    Element Should Be Visible                     ${validaMovimentacao}

Então o sistema o grid vazio
    Element Should Not Be Visible                 ${validaMovimentacao}

