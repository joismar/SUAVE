require 'httparty'
require 'json'
require "i18n"

class EscolaController < ApplicationController
    def escola
        if params[:palavra].nil?
          @pesquisa_ativa = false
          #FazNada
        else
          @termo = I18n.transliterate(params[:palavra])
          @pesquisa_ativa = true
          pesquisar()
        end
    end

    def pesquisar
        fonte, palavra = "http://educacao.dadosabertosbr.com/api/escolas?nome=", @termo
    
        # Montando Url para acessar a API
        @url = "#{fonte}#{palavra}"
    
        dados = HTTParty.get(@url)
        @escolas = JSON.parse(dados.body)
        @paginacao = Kaminari.paginate_array(@escolas[1]).page(params[:page]).per(20)
    end
end
