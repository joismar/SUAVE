require 'httparty'
require 'json'
require "i18n"

class HomeController < ApplicationController
  
  def index
    
    if params[:palavra].nil?
      #FazNada
    else
      @termo = I18n.transliterate(params[:palavra])
      pesquisar()
    end
  
  end

  def pesquisar

    fonte, palavra = "http://educacao.dadosabertosbr.com/api/escolas?nome=", @termo

    # Montando Url para acessar a API
    @url = "#{fonte}#{palavra}"

    dados = HTTParty.get(@url)
    @escolas = JSON.parse(dados.body)
    puts @escolas

  end
end
