class PropertiesController < ApplicationController
  def index
    @agency = Agency.find(params[:agency_id])
    @properties = @agency.properties.paginate(:page => params[:page]).order("created_at DESC")
  end

  def show
    @property = Property.find(params[:id])
    console
  end
end
