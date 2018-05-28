# encoding: utf-8
# language: pt
Funcionalidade: Contato

  Cenário: Devo ver um formulário de mensagem quando clicar no link de contato
    Dado que eu estou na página inicial
    Quando clicar no link "CONTATO"
    Então devo ver os campos de contato

  Cenário: Devo ver uma mensagem de sucesso após enviar uma mensagem de contato
    Dado que eu estou na página de contato
    Quando preencher os dados de de contato
    Então devo ver a mensagem "Agradecemos a sua menssagem!"