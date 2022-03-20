class ForecastSerializer
  include JSONAPI::Serializer

  set_id :id
  set_type :avalanche_forecast
  attributes :date, :conditions, :eight_five_and_up, :seven_to_eight_five, :five_to_seven
end
