class HomeController < ApplicationController
  def index

    @termo = params[:palavra]
  end
end
