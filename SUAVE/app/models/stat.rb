class Stat < ApplicationRecord

  # Para acessar a API
  include HTTParty

  base_uri "http://educacao.dadosabertosbr.com/api/estatisticas"

  format :json

  def brasil
    self.class.get("http://educacao.dadosabertosbr.com/api/estatisticas?tipoLocal=NAC&nomeLocal=Brasil&codMunicipio=0&indice=0").parsed_response
  end
end
