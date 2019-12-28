class OfficesController < ApplicationController

  def show
    # @offices = Office.new(office_params)
    @offices = Office.find(params[:id])
    @office_name = current_office.office_name
    @informations = current_office.informations
  end
  # private
  # def office_params
  #   params.require(:information).permit(:name, :prefectures, :cities,  :image, :text).merge(office_id: current_office.id)
  # end
  
end
