*** Settings ***
Documentation    Essa suíte testa o site da Amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Task Teardown    Fechar o navegador


*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Mais Vendidos"
    [Documentation]    Esse teste verifica o menu do site da Amazon.com.br
    ...                e verifica a categoria computadores e informática.
    [Tags]             menus    categorias
    Dado que estou na home page Amazon.com.br
    Quando acessar o menu "Mais Vendidos"
    Então o título da página deve ficar "Amazon.com.br Mais Vendidos: Os items mais populares na Amazon"
    E o texto "Mais Vendidos" deve ser exibido na página
    E a categoria "Mais Vendidos em Eletrônicos" deve ser exibida na página
    

Caso de teste 02 - Pesquisa de um Produto
    [Documentation]    Esste tste verifica a busca de um produto.
    [Tags]             busca_produtos    lista_busca
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página
