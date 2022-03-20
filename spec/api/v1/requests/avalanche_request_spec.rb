require 'rails_helper'
RSpec.describe 'avalanche request', :vcr do
  it 'returns json' do

    headers = { 'CONTENT_TYPE' => 'application/json', "Accept" => 'application/json' }
    get '/api/v1/avalanche', headers: headers, params: { location: "salt-lake" }
    forecast = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful
    expect(response.status).to eq(200)
    expect(forecast).to be_a Hash
  end
end
