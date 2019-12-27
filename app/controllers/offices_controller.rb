class OfficesController < ApplicationController
  # def new
  #   @office = Office.new
  # end
  # def create
  #   @office = Office.new(office_params)
  #   @office.save
  # end
  def show
    @office = Offices.find(params[:id])
    @office_name = current_office.office_name
    @informations = current_user.informations
  end
end
