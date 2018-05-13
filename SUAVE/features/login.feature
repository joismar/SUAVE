# encoding: utf-8
# language: pt
Funcionalidade: Página de Login

  Cenário: Devo visualizar página de login ao clicar no botão de login
    Dado que eu estou na página inicial
    Quando clicar no botão "Login"
    Então devo ver a mensagem "Entrar"

  Cenário: Devo ir a página inicial e um botão de logout ao entrar pela página de login
    Dado que eu estou na página de login
    Quando eu preencher todos os campos de login
    E clicar no botao "Entrar"
    Então devo ser redirecionado para página inicial
    E devo ver o botao "Sair"
