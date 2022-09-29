*** Settings ***
Documentation        Aqui estará presente todos as keywords dos testes de Cadastro do site automationpractice.com

Resource        ../../config/package.robot

*** Keywords ***
Acessar a página home do site
    Acessar a página home do site Automation Pratice

Clicar em "${BUTTON}"
    Wait Until Element Is Visible    xpath=//*[contains(text(), '${BUTTON}')]
    Click Element                    xpath=//*[contains(text(), '${BUTTON}')]

Informar um e-mail válido
    ${FAKE_EMAIL}                    FakerLibrary.Email
    Wait Until Element Is Visible    email_create
    Input Text                       email_create    ${FAKE_EMAIL}

Preencher os dados obrigatórios
    ${FAKE_NAME}                     FakerLibrary.First Name
    ${FAKE_LASTNAME}                 FakerLibrary.Last Name
    ${FAKE_PASS}                    FakerLibrary.Password
    Wait Until Element Is Visible    ${REGISTER.form_register}
    
    Click Element                    ${REGISTER.check_mr}
    Debug
    Input Text                       ${REGISTER.first_name}            ${FAKE_NAME}
    Input Text                       ${REGISTER.last_name}             ${FAKE_LASTNAME}
    Input Text                       ${REGISTER.password}              ${FAKE_PASS}

    Select From List By Value        ${REGISTER.select_days}           15
    Select From List By Value        ${REGISTER.select_months}         3
    Select From List By Value        ${REGISTER.select_year}           1991
    
#    Input Text                       ${REGISTER.address_name}          text
#    Input Text                       ${REGISTER.address_lastname}      text
#    Input Text                       ${REGISTER.company}               text
#    Input Text                       ${REGISTER.address1}              text
#    Input Text                       ${REGISTER.city}                  text
#    Input Text                       ${REGISTER.state}                 text
#    Input Text                       ${REGISTER.postcode}              text
#    Input Text                       ${REGISTER.other}                 text
#    Input Text                       ${REGISTER.mobile}                text
#    Input Text                       ${REGISTER.alias}                 text
    
    Sleep    3

    Click Element                    ${REGISTER.btn_register}          text
    
Submeter cadastro
Conferir se o cadastro doi efetuado com sucesso