# encoding: utf-8
# language: pt
Funcionalidade: Visualizar página de login

  Cenário: Devo visualizar página de login ao clicar no botão de login
    Dado que eu estou na página inicial
    Quando clicar no botão "Login"
    Então deve ver a mensagem "Login"