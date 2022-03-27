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
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Mais vendidos"
    Verificar se aparece a frase "Mais Vendidos"
    Verificar se o título da página fica "Mais Vendidos em Eletrônicos | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"
    Verificar se aparece a categoria "Mais Vendidos em Automotivo"

Caso de teste 02 - Pesquisa de um Produto
     [Documentation]    Esste tste verifica a busca de um produto.
     [Tags]             busca_produtos    lista_busca
     Acessar a home page do site Amazon.com.br
     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
     Clicar no botão de pesquisa
     Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"

