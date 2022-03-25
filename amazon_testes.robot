*** Settings ***
Documentation    Essa suíte testa o site da Amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
# Task Teardown    Fechar o navegador


*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Mais Vendidos"
    [Documentation]    Esse teste verifica o menu do site da Amazon.com.br
    ...                e verifica a categoria computadores e informática.
    [Tags]             menus    categorias
    Acessar a home page do site Amazon.com.br
#     Entrar no menu "Mais vendidos"
#     Verificar se o título da página fica "Mais Vendidos e Tecnologia | Amazon.com.br"
#     Verificar se aparece a frase "Mais Vendidos e Tecnologia"
#     Verificar se aparece a categoria "Computadores e Informática"

# Caso de teste 02 - Pesquisa de um Produto
#     [Documentation]    Esste tste verifica a busca de um produto.
#     [Tags]             busca_produtos    lista_busca
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa, listando o produto pesquisado