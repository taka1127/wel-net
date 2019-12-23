class InformationsController < ApplicationController

  def index
    @informations = Information.all
  end

  def new
    @informations = Information.new
  end
  
end

