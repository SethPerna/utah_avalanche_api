require 'rails_helper'
RSpec.describe 'Forecast Service' do
  it 'returns a faraday response', :vcr do
    connection = ForecastService.connection("salt-lake")
    expect(connection).to be_a(Faraday::Connection)
  end

  it 'returns a cocktail at random', :vcr do
    forecast = ForecastService.connection("salt-lake")
    expect(forecast).to have_key(:advisories)
    expect(forecast[:advisories][0]).to have_key(:advisory)
    expect(forecast[:advisories][0][:advisory]).to have_key(:date_issued)
    expect(forecast[:advisories][0][:advisory]).to have_key(:current_conditions)
    expect(forecast[:advisories][0][:advisory]).to have_key(:overall_danger_rose)
  end
end
