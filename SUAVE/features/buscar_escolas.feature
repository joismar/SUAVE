# encoding: utf-8
# language: pt
Funcionalidade: Buscar Escolas

  @javascript
  Cenário: Devo visualizar um erro caso pesquisar uma escola sem haver digitado nada
    Dado que eu estou na página escolas
    Quando clicar no botão "Buscar Escola"
    Então devo ver a mensagem "Preencha este campo."