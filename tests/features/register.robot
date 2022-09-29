*** Settings ***
Documentation        "Aqui estará presente todos os testes automatizados com suas keywords - Exercicios"


Resource        ../../src/config/package.robot

Test Setup        Abrir Navegador
Test Teardown     Fechar Navegador



*** Test Cases ***
Caso de Teste 04 - Adicionar Cliente
    [Tags]    CADASTRO
    Acessar a página home do site
    Clicar em "Sign in"
    Informar um e-mail válido
    Clicar em "Create an account"
    Preencher os dados obrigatórios
    Submeter cadastro
    Conferir se o cadastro doi efetuado com sucesso