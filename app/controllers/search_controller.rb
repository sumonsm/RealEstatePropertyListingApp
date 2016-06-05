class SearchController < ApplicationController
  def search
    if params[:q].nil?
      @properties = []
    else
      @search_params = {}
      if params[:city].present?
        @search_params.merge!({
            city: params[:city]
        })
      end
      if params[:property_type].present?
        @search_params.merge!({
          property_type: params[:property_type]
        })
      end

      @properties = Property.search(params[:q]).records.where(@search_params)
      @results_found = @properties.count

    end
  end
end
