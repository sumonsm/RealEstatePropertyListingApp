class SearchController < ApplicationController
  def Search
    console
    if params[:q].nil?
      @properties = []
    else
      @properties = Property.search params[:q]
    end
  end
end
