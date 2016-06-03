class AgenciesController < ApplicationController
  def index
    @agencies = Agency.order("created_at DESC").limit(5)
  end
end
