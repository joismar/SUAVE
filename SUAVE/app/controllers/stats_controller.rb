class StatsController < ApplicationController
  def stats
    estatisticas = Stat.new
    @brasil = estatisticas.brasil

  end
end
