require 'httparty'
require 'json'

class HomeController < ApplicationController
  def index

    if params[:palavra].nil?
      #vidaquesegue
    else
      @termo = params[:palavra]
      pesquisar()
    end
  end

  def pesquisar

    fonte, palavra = "http://educacao.dadosabertosbr.com/api/escolas?nome=", @termo

    # Montando Url para acessar os discursos do senador
    @url = "#{fonte}#{palavra}"

    dados = HTTParty.get(@url)
    @escolas = JSON.parse(dados.body)
    puts @escolas

  end
end
