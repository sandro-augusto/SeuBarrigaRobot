*** Settings ***
Resource    ./Main.robot

*** Variables ***
${FakeNome}
${FakeEmail}
${FakeSenha}
${FakerDescricao}
${FakerValor}

*** Keywords ***
Fakers

#FakerName
    ${FakeNome}=             FakerLibrary.Name
    Set Test Variable        ${FakeNome}

#FakerEmail
    ${FakeEmail}=            FakerLibrary.Email
    Set Test Variable        ${FakeEmail}

#FakerSenha
    ${compSenha}=            FakerLibrary.Numerify      text=##
    ${FakeSenha}=            Catenate     Seubarriga    ${compSenha}
    Set Test Variable        ${FakeSenha}

#FakerDescrição
    ${FakerDescricao}=       FakerLibrary.Sentence
    Set Test Variable        ${FakerDescricao}

#FakerValor
    ${FakerValor}=           FakerLibrary.Numerify    ###
    Set Test Variable        ${FakerValor}