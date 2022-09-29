*** Settings ***
Documentation        Aqui estará presente todos as keywords dos testes de pesquisa do site automationpractice.com

Resource        ../../config/package.robot

*** Keywords ***
Acessar a página home do site Automation Pratice
    Title Should Be                  ${HOME_PAGE.title}
    Wait Until Element Is Visible    ${HOME_PAGE.input_busca}    10

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text                       ${HOME_PAGE.input_busca}    ${PRODUTO}

Clicar no botão Pesquisar
    Wait Until Element Is Visible    ${HOME_PAGE.btn_buscar}
    Click Element                    ${HOME_PAGE.btn_buscar}

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible    id=center_column
    Title Should Be                  Search - My Store
    Page Should Contain Image    ${PRODUTO_PAGE.img_browser}

Conferir mensagem "${MENSAGEM}"
    Wait Until Page Contains    ${MENSAGEM}