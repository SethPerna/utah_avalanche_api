class ForecastService


  def self.connection(location)
    url = "https://utahavalanchecenter.org/forecast/#{location}/json"
    conn = Faraday.new(url: url) do |faraday|
      faraday.headers["User-Agent"] = "gseth26@gmail.com"
    end
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end
end
