*** Settings ***
Documentation        "Aqui estará presente todos os testes automatizados com suas keywords - Exercicios"


Resource        ../../src/config/package.robot

Test Setup        Abrir Navegador
Test Teardown     Fechar Navegador



*** Test Cases ***
Caso de Teste 01 - Pesquisar produto existente
    [Tags]    PESQUISA
    Acessar a página home do site Automation Pratice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão Pesquisar
    Conferir se o produto "Blouse" foi listado no site

Caso de Teste 02 - Pesquisar produto que não existente
    [Tags]    PRODUTONAOEXISTE
    Acessar a página home do site Automation Pratice
    Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
    Clicar no botão Pesquisar
    Conferir mensagem "No results were found for you search"