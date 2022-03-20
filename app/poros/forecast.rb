class Forecast
  attr_reader :id, :date, :conditions, :eight_five_and_up, :seven_to_eight_five, :five_to_seven
  def initialize(data)
    @id = nil
    @date = data[:advisories][0][:advisory][:date_issued]
    @conditions = data[:advisories][0][:advisory][:current_conditions]
    @eight_five_and_up = danger_rose_top(data)
    @seven_to_eight_five = danger_rose_mid(data)
    @five_to_seven = danger_rose_bottom(data)
  end
  # danger rose comes as string of numbers that represent slope compass direction and danger status
  def danger_rose_top(data) #grabs first 8 numbers for elevation above 8,500 feet.
    top_array = data[:advisories][0][:advisory][:overall_danger_rose].slice(0..15).split(',')
    int_array = top_array.map { |char| char.to_i }
    int_array.each_with_index.map do |char, i|
      direction(char, i)
    end
  end

  def danger_rose_mid(data)#grabs second 8 numbers for elevatiopn between 7000 and 8500 feet
    top_array = data[:advisories][0][:advisory][:overall_danger_rose].slice(16..31).split(',')
    int_array = top_array.map { |char| char.to_i }
    int_array.each_with_index.map do |char, i|
      direction(char, i)
    end
  end

  def danger_rose_bottom(data)#grabs last 8 numbers for elevation between 5000 and 7000 feet
    top_array = data[:advisories][0][:advisory][:overall_danger_rose].slice(32..).split(',')
    int_array = top_array.map { |char| char.to_i }
    int_array.each_with_index.map do |char, i|
      direction(char, i)
    end
  end

  def direction(char, i) # conditional to assign slope to mountain condition 
    conditions = nil
    slope = nil
    if i == 0
      slope = "North"
    elsif i == 1
      slope = "North East"
    elsif i == 2
      slope = "East"
    elsif i == 3
      slope = "South East"
    elsif i == 4
      slope = "South"
    elsif i == 5
      slope = "South West"
    elsif i == 6
      slope = "West"
    elsif i == 7
      slope = "North West"
    end
    if char == 0
      conditions = "No rating"
    elsif char == 1
      conditions = "Pockets of low danger"
    elsif char == 2
      conditions = "Low danger"
    elsif char == 3
      conditions = "Pockets of moderate danger"
    elsif char == 4
      conditions = "Moderate danger"
    elsif char == 5
      conditions = "Pockets of considerable danger"
    elsif char == 6
      conditions = "Considerable danger"
    elsif char == 7
      conditions = "Pockets of high danger"
    elsif char == 8
      conditions = "High danger"
    elsif char == 9
      conditions = "Pockets of extreme danger"
    elsif char == 10
      conditions = "Extreme danger"
    end
    "#{slope} facing slopes- #{conditions}"
  end
end
