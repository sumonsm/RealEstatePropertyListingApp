class AgenciesController < ApplicationController
  def index
    @agencies = Agency.paginate(:page => params[:page]).order("created_at DESC")
  end
end
