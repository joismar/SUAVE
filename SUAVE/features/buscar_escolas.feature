# encoding: utf-8
# language: pt
Funcionalidade: Buscar Escolas

  Cenário: Devo visualizar uma lista de escolas ao pesquisar alguma escola
    Dado que eu estou na página escolas
    Quando eu preencher o campo de pesquisa de escolas com "escola educador paulo freire"
    Então devo ver a mensagem "Lista de Escolas"