*** Settings ***
Documentation        Aqui estarão presentes todos os exercícios da aula de  automação
...                  Assim pula linha na descrição

*** Variables ***
&{PESSOA}        nome=Jonas    
...              sobrenome=Pereira    
...              idade=31    
...              endereco=Jose Inocencio Sampaio
...              numero=57
...              carro=Celta
...              data_nascimento=15/03/1991

${NOME}          Jonas

@{FRUTAS}        Laranja
...              Mamão
...              Banana
...              Abacaxi

*** Keywords ***
Somar dois numeros
    [Arguments]                ${NUM_A}    ${NUM_B}
    ${SOMA}        Evaluate    ${NUM_A}+${NUM_B}
    Log To Console             ${SOMA}

Somar os numeros "${NUM_A}" e "${NUM_B}"
    ${SOMA}        Evaluate    ${NUM_A}+${NUM_B}
    Log To Console             ${SOMA}

Contar de 0 a 9
    FOR    ${counter}        IN RANGE    0    9
        Log To Console        ${counter}
    END

Imprimir lista de frutas
    @{FRUTAS}    Create List    Banana     Maça    Manga    Morango    Abacaxi    Chuchu
        FOR    ${fruta}    IN    @{FRUTAS}
            Log To Console       ${fruta}
            
        END

#Imprimir em qual numero estou
#    FOR    ${counter}    IN RANGE    0    11
#       IF       ${counter} == 0
#          Log To Console    Estou no número: ${counter}
#        ELSE IF    ${counter} == 5     or    ${counter} == 8
#            Log To Console    Esse é o número que eu procurava: ${counter}
#        ELSE
#            Log To Console    Estou no número: ${counter}
#            
#        END
#        
#    END

Imprimindo paises
    @{PAISES}    Create List    USA    Holanda    Japão    Dubai    Grecia
    FOR    ${pais}    IN    @{PAISES}
        Log To Console    Esse ano eu vou para ${pais}
        
    END


*** Test Cases ***

Cenario: Imprimindo os paises
    [Tags]    VIAGEM
    Imprimindo paises

#Cenario: Imprimindo em qual número estou
#    [Tags]        QUALNUMERO
#        Imprimir em qual numero estou

Cenario: Imprimindo lista de frutas
    [Tags]    FRUTAS
    Imprimir lista de frutas

Cenario: Validar contagem de 0 a 9
    [Tags]    contador
    Contar de 0 a 9

Imprimindo no console as informações da PESSOA através de variáveis tipo Dicionário
    [Tags]        DICIONARIO
    Log To Console    /n
    Log To Console    ${PESSOA.nome}
    Log To Console    ${PESSOA.sobrenome}
    Log To Console    ${PESSOA.idade}
    Log To Console    ${PESSOA.endereco}
    Log To Console    ${PESSOA.numero}
    Log To Console    ${PESSOA.carro}
    Log To Console    ${PESSOA.data_nascimento}

Imprimindo meu nome através de uma variável normal
    [Tags]        NOME
    Log To Console    /n
    Log To Console    ${NOME}

Imprimindo nome de frutas através de uma variável tipo Lista
    [Tags]        LISTA
    Log To Console    /n
    Log To Console    ${FRUTAS[0]}
    Log To Console    ${FRUTAS[3]}

Cenario: Somar dois numeros
    [Tags]        SOMA
    Somar dois numeros        300    200

Cenario: Somar dois numeros embutidos
    [Tags]    embutidos
    Somar os numeros "400" e "600"
    
    
