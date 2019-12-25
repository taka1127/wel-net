class InformationsController < ApplicationController
  def index
    @informations = Information.all
  end

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    @information.save
    # redirect_to root_path
  end

  def destroy
    information = Information.find(params[:id])
    information.destroy
  end

  def edit
    @information = Information.find(params[:id])
  end

  def update
    information = Information.find(params[:id])
    information.update(information_params)
    # redirect_to root_path
  end

  def show
    # information = Information.find(params[:id])
    @information = Information.find(params[:id])
  end

  private
  def information_params
    params.require(:information).permit(:name, :image, :text)
  end
  
end

