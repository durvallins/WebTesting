*** Settings ***
Library    SeleniumLibrary


*** Variables ***
# ${URL}                    http://www.amazon.com.br
# ${MENU_MAIS_VENDIDOS}    //a[@href='/gp/bestsellers/?ref_=nav_cs_bestsellers'][contains(.,'Mais Vendidos')]


*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

 Acessar a home page do site Amazon.com.br
     Go To    url=${URL}
     Wait Until Element Is Visible    locator = ${MENU_MAIS_VENDIDOS}