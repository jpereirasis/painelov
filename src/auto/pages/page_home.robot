*** Settings ***
Documentation        Aqui estarão presentes todos os elementos da tela Home.


*** Variables ***

${URL}        http://automationpractice.com/index.php
&{HOME_PAGE}
...            title=My Store
...            input_busca=search_query_top
...            btn_buscar=//*[@class="btn btn-default button-search"]
