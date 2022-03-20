require 'rails_helper'
RSpec.describe Forecast do
  it "exists and has attributes" do

    data = {
      :advisories => [
        {
          :advisory => {
            :date_issued => "12/12/22",
            :current_conditions => "Snowy",
            :overall_danger_rose => "4,4,4,4,4,4,4,4,4,4,4,2,2,2,4,4,4,4,4,2,2,2,4,4"
          }
        }
      ]
    }
    expected_1 = ["North facing slopes- Moderate danger",
       "North East facing slopes- Moderate danger",
       "East facing slopes- Moderate danger",
       "South East facing slopes- Moderate danger",
       "South facing slopes- Moderate danger",
       "South West facing slopes- Moderate danger",
       "West facing slopes- Moderate danger",
       "North West facing slopes- Moderate danger"]

     expected_2 = ["North facing slopes- Moderate danger",
       "North East facing slopes- Moderate danger",
       "East facing slopes- Moderate danger",
       "South East facing slopes- Low danger",
       "South facing slopes- Low danger",
       "South West facing slopes- Low danger",
       "West facing slopes- Moderate danger",
       "North West facing slopes- Moderate danger"]
       
    expected_3 = ["North facing slopes- Moderate danger",
       "North East facing slopes- Moderate danger",
       "East facing slopes- Moderate danger",
       "South East facing slopes- Low danger",
       "South facing slopes- Low danger",
       "South West facing slopes- Low danger",
       "West facing slopes- Moderate danger",
       "North West facing slopes- Moderate danger"]
    forecast = Forecast.new(data)
    expect(forecast).to be_a Forecast
    expect(forecast.date).to eq("12/12/22")
    expect(forecast.id).to eq(nil)
    expect(forecast.conditions).to eq("Snowy")
    expect(forecast.eight_five_and_up).to eq(expected_1)
    expect(forecast.seven_to_eight_five).to eq(expected_2)
    expect(forecast.five_to_seven).to eq(expected_3)
  end
end
