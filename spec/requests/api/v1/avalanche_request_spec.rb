require 'rails_helper'
RSpec.describe 'avalanche request', :vcr do
  it 'returns json' do

    headers = { 'CONTENT_TYPE' => 'application/json', "Accept" => 'application/json' }
    get '/api/v1/avalanche', headers: headers, params: { location: "salt-lake" }
    forecast = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful
    expect(response.status).to eq(200)
    expect(forecast).to be_a Hash
    expect(forecast).to have_key(:data)
    expect(forecast[:data]).to have_key(:id)
    expect(forecast[:id]).to eq(nil)
    expect(forecast[:data]).to have_key(:type)
    expect(forecast[:data][:type]).to eq("avalanche_forecast")
    expect(forecast[:data]).to have_key(:attributes)
    expect(forecast[:data][:attributes]).to have_key(:conditions)
    expect(forecast[:data][:attributes]).to have_key(:eight_five_and_up)
    expect(forecast[:data][:attributes]).to have_key(:seven_to_eight_five)
    expect(forecast[:data][:attributes]).to have_key(:five_to_seven)
  end
end
