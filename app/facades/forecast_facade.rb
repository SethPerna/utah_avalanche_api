class ForecastFacade
  def self.get_forecast(location)
    data = ForecastService.connection(location)
    Forecast.new(data)
  end
end
