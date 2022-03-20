class Api::V1::AvalancheController < ApplicationController
  def index
    if params[:location].present?
      location = params[:location]
    else
      render status: 404
    end
    forecast = ForecastFacade.get_forecast(location)
    render json: ForecastSerializer.new(forecast)
  end
end
