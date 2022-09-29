*** Settings ***

Documentation    Aqui estarão presentes todas as configurações de Setup e Teardown
...              Essas configurações, podem ser utilizadas tanto para Suites Setup/Teardown
...              quanto para test Setup/Teardown.

Resource        package.robot


*** Keywords ***
Abrir Navegador
    Set Selenium Implicit Wait    20
    Open Browser     about:blank    chrome
    Go To                            ${URL}
    Maximize Browser Window

Fechar Navegador
    Capture Page Screenshot
    Sleep    3
    Close Browser