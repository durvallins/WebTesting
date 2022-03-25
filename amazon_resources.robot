*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}                    http://www.amazon.com.br
                         
${MENU_MAIS_VENDIDOS}            //div[@id='nav-xshop']//a[contains(@class,'')][contains(text(),'Mais Vendidos')]
${HEADER_MAIS_VENDIDOS}          //title[contains(.,'Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon')]  
${TEXTO_HEADER_MAIS_VENDIDOS}    Mais Vendidos


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

 Acessar a home page do site Amazon.com.br
     Go To    url=${URL}
     Wait Until Element Is Visible    locator=${MENU_MAIS_VENDIDOS}

Entrar no menu "Mais vendidos"
    Click Element    locator=${MENU_MAIS_VENDIDOS}

Verificar se aparece a frase "Mais Vendidos"
    Wait Until Page Contains    text=${TEXTO_HEADER_MAIS_VENDIDOS}
    Wait Until Element Is Visible    locator=${HEADER_MAIS_VENDIDOS}