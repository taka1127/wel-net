class OfficesController < ApplicationController
  before_action :set_office

  def index
    
  end

  def show
    # @offices = Office.new(office_params)
    @offices = Office.find(params[:id])
    @office_name = current_office.office_name
    @informations = current_office.informations
  end

  private
  # def office_params
  #   params.require(:offices).permit(:name, :prefectures, :cities,  :image, :text)
  # end
  def set_office
    @office = Office.find(params[:id])
  end
  
end
