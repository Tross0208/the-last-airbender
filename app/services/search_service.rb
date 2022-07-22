class SearchService
  def self.get_people_by_nation(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=200")
    get_json(response)
  end

  def self.conn
    Faraday.new('https://last-airbender-api.herokuapp.com/')
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
