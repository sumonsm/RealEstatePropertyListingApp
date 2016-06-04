class PropertiesController < ApplicationController
  def index
    @agency = Agency.find(params[:agency_id])
    @properties = @agency.properties.paginate(:page => params[:page]).order("created_at DESC")
    console
  end

  def show
    @property = Property.find(params[:id])
  end
end
