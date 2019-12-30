class InformationsController < ApplicationController
  before_action :set_information, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]
  def index
    @informations = Information.includes(:office)
  end

  def new
    @information = Information.new
  end

  def create
    # Information.create(offices_id: current_office.id, name: information_params[:name], image: information_params[:image], text: information_params[:text])
    # Information.create(information_params)
    @information = Information.new(information_params)
    @information.save
    # redirect_to root_path
  end

  def destroy
    information = Information.find(params[:id])
    information.destroy
  end

  def edit
  end

  def update
    information = Information.find(params[:id])
    information.update(information_params)
    # redirect_to root_path
  end

  def show
    @comment = Comment.new
    @comments = @information.comments.includes(:office, :user)
  end

  private
  def information_params
    params.require(:information).permit(:name, :prefectures, :cities, :image, :text ).merge(office_id: current_office.id)
  end

  def set_information
    @information = Information.find(params[:id])
    # @information = Information.find(params[:office_id])
  end

  def move_to_index
    # redirect_to action: :index unless user_signed_in?
    # redirect_to action: :index unless office_signed_in?
  end
  
end

