class OfficesController < ApplicationController
  # def new
  #   @office = Office.new
  # end
  # def create
  #   @office = Office.new(office_params)
  #   @office.save
  # end
  def show
    @office = Office.find(params[:id])
    @office_name = current_office.office_name
    @informations = current_office.informations
  end
end
