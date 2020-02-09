class InformationsController < ApplicationController
  before_action :set_information, only: [:edit, :show]
  # before_action :move_to_index, except: [:index, :show]
  def index
    @informations = Information.includes(:office)
  end

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    if @information.save
      redirect_to informations_path(@information), notice: '投稿が完了しました'
    else
      flash.now[:alert] = '事業所名とテキストを入力してください'
      render :new
    end
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
  end
  
  def show
    @comment = Comment.new
    @comments = @information.comments.includes(:office).order(id: "DESC")
    @user_comment = UserComment.new
    @user_comments = @information.user_comments.includes(:user).order(id: "DESC")
  end

  private
  def information_params
    params.require(:information).permit(:name, :text, :prefecture, :city,:postal_code,:house_number,:office_tel, :image ).merge(office_id: current_office.id)
  end

  def set_information
    @information = Information.find(params[:id])
    # @information = Information.find(params[:office_id])
  end

  # def move_to_index
  #   # redirect_to action: :index unless user_signed_in?
  #   # redirect_to action: :index unless office_signed_in?
  # end
  
end

