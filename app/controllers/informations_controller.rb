class InformationsController < ApplicationController
  def index
    @informations = Information.all
  end

  def new
    @information = Information.new
  end

  def create
    @infomation = Information.new(information_params)
    @infomation.save
    # redirect_to root_path
  end

  private
  def information_params
    params.permit(:name, :image, :text)
  end
  
end

