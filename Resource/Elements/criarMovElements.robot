*** Variables ***
${urlMovimentacao}       https://seubarriga.wcaquino.me/movimentacao
${tiposMov}              id:tipo
${tiposMovimento}        css:#tipo > option
${fieldDataMov}          id:data_transacao
${fieldDataPagMov}       id:data_pagamento
${fieldDescricaoMov}     id:descricao
${fieldInteressadoMov}   id:interessado
${fieldValorMov}         id:valor
${fieldContaMov}         id:conta
${optionContaMov}        css:#conta > option
${statusPagoMov}         id:status_pago
${statusPendenteMov}     id:status_pendente
${btnSalvarMov}          css:.btn
${validaMessageMov}      css:.alert
${validaMessage1Mov}     css:.alert li
