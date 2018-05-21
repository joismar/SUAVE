require 'httparty'
require 'json'
require "i18n"

class EscolaController < ApplicationController

  def escola

    if params[:palavra].nil?
      @pesquisa_ativa = false
    else
      @pesquisa_ativa = true
      pesquisar()
    end
  end

  def pesquisar

    # Montando Url para acessar a API
    url = "http://educacao.dadosabertosbr.com/api/escolas?nome=#{I18n.transliterate(params[:palavra])}"

    dados = HTTParty.get(url)
    @escolas = JSON.parse(dados.body)
    @paginacao = Kaminari.paginate_array(@escolas[1]).page(params[:page]).per(20)

  end

  def show

    # Montando Url para acessar a API
    url = "http://educacao.dadosabertosbr.com/api/escola/#{params[:id]}"

    dados = HTTParty.get(url)
    @informacao = JSON.parse(dados.body)

  end
end
