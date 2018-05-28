# encoding: utf-8
# language: pt
Funcionalidade: Avaliar Escola

  Cenário: Devo ver uma lista de escolas quando pesquisar por uma
    Dado que eu estou na página escolas
    Quando eu preencher o campo de pesquisa de escolas com "escola educador paulo freire"
    E clicar no botão "Buscar Escola"
    Então devo ver a mensagem "Lista de Escolas"

  Cenário: Devo ver a avaliação dos usuários de uma determinada escola quando seleciona-la
    Dado que eu estou na página escolas
    Quando eu preencher o campo de pesquisa de escolas com "escola educador paulo freire"
    E clicar no botão "Buscar Escola"
    E clicar no link "ESCOLA EDUCADOR PAULO FREIRE"
    Então devo ver a mensagem "Avaliação"