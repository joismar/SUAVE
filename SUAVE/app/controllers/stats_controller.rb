class StatsController < ApplicationController
  def stats
    estatisticas = Stat.new
    @brasil = estatisticas.brasil
    @norte = estatisticas.norte
    @nordeste = estatisticas.nordeste
    @centro = estatisticas.centro
    @sudeste = estatisticas.sudeste
    @sul = estatisticas.sul

  end
end
