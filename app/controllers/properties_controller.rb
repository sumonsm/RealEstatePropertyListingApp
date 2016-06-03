class PropertiesController < ApplicationController
  def index
    @agency = Agency.find(params[:agency_id])
    @properties = @agency.properties.all.order("created_at DESC")
  end

  def show
  end
end
