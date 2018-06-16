# encoding: utf-8
# language: pt
Funcionalidade: Cadastro

  Cenário: Devo ver um erro caso clique em cadastrar sem digitar nada
    Dado que eu estou na página de cadastro
    Quando clicar no botão "Cadastrar-se"
    Então devo ver a mensagem "erros impediram continuar"