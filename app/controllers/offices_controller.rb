class OfficesController < ApplicationController
  def show
    office = Offices.find(params[:id])
    @office_name = current_office.office_name
    @informations = current_user.informations
  end
end
