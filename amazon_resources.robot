*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}                chrome
${URL}                    http://www.amazon.com.br
${MENU_MAIS_VENDIDOS}            //div[@id='nav-xshop']//a[contains(@class,'')][contains(text(),'Mais Vendidos')]
${HEADER_MAIS_VENDIDOS}         //h2[contains(text(),'Mais Vendidos em Eletrônicos')] 


*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

 Acessar a home page do site Amazon.com.br
     Go To    url=${URL}
     Wait Until Element Is Visible    locator=${MENU_MAIS_VENDIDOS}

Entrar no menu "Mais vendidos"
    Click Element    locator=${MENU_MAIS_VENDIDOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${HEADER_MAIS_VENDIDOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//h2[contains(text(),'${NOME_CATEGORIA}')]         

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=//div[@class='s-widget-container s-spacing-small s-widget-container-height-small celwidget slot=MAIN template=SEARCH_RESULTS widgetId=search-results_4']//div[@class='s-card-container s-overflow-hidden aok-relative s-expand-height s-include-content-margin s-latency-cf-section s-card-border']//div[@class='a-section a-spacing-base']//div[@class='a-section a-spacing-small s-padding-left-small s-padding-right-small']//div[@class='a-section a-spacing-none a-spacing-top-small s-title-instructions-style']//h2[@class='a-size-mini a-spacing-none a-color-base s-line-clamp-4']//a[@class='a-link-normal s-underline-text s-underline-link-text s-link-style a-text-normal']//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(text(),'${PRODUTO}')]


# GHERKIN STEPS
Dado que estou na home page Amazon.com.br
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Mais Vendidos em Eletrônicos | Amazon.com.br"

Quando acessar o menu "Mais Vendidos"
    Entrar no menu "Mais vendidos"

Então o título da página deve ficar "Amazon.com.br Mais Vendidos: Os items mais populares na Amazon"
    Verificar se o título da página Amazon.com.br Mais Vendidos: Os items mais populares na Amazon"

E o texto "Mais Vendidos" deve ser exibido na página
    Verificar se aparece a frase "Mais Vendidos"
    
E a categoria "Mais Vendidos em Eletrônicos" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"