class ForecastFacade
  def self.get_forecast(location)
    data = ForecastService.connection(location)
    Forecast.new(data)
    require "pry"; binding.pry
  end
end
