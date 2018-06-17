class Stat < ApplicationRecord

  # Para acessar a API
  include HTTParty

  #base_uri "http://educacao.dadosabertosbr.com/api/estatisticas"

  format :json

  def brasil
    self.class.get("http://educacao.dadosabertosbr.com/api/estatisticas?tipoLocal=NAC&nomeLocal=Brasil&codMunicipio=0&indice=0").parsed_response
  end

  def norte
    self.class.get("http://educacao.dadosabertosbr.com/api/estatisticas?tipoLocal=REG&nomeLocal=Norte&codMunicipio=0&indice=0").parsed_response
  end

  def nordeste
    self.class.get("http://educacao.dadosabertosbr.com/api/estatisticas?tipoLocal=REG&nomeLocal=Nordeste&codMunicipio=0&indice=0").parsed_response
  end

  def centro
    self.class.get("http://educacao.dadosabertosbr.com/api/estatisticas?tipoLocal=REG&nomeLocal=Centro-Oeste&codMunicipio=0&indice=0").parsed_response
  end

  def sudeste
    self.class.get("http://educacao.dadosabertosbr.com/api/estatisticas?tipoLocal=REG&nomeLocal=Sudeste&codMunicipio=0&indice=0").parsed_response
  end

  def sul
    self.class.get("http://educacao.dadosabertosbr.com/api/estatisticas?tipoLocal=REG&nomeLocal=Sul&codMunicipio=0&indice=0").parsed_response
  end
end
