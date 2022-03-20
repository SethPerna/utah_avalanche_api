require 'rails_helper'

RSpec.describe ForecastFacade, type: :facade do
  context 'class methods' do
    describe '::get_forecast' do
      it 'should return a forecast object', :vcr do
        forecast = ForecastFacade.get_forecast("salt-lake")

        expect(forecast).to be_a(Forecast)
      end
    end
  end
end
