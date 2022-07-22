class SearchFacade
  def self.parse_nation(param)
    if param == "fire_nation"
      nation = "Fire Nation"
    elsif param == "air_nomads"
      nation = "Air Nomads"
    elsif param == "earth_kingdom"
      nation = "Earth Kingdom"
    elsif param == "water_tribes"
      nation = "Water Tribes"
    end
  end

  def self.count_by_nation(nation)
    count = SearchService.get_people_by_nation(nation).count
  end

  def self.list_by_nation(nation)
    characters = []
    list = SearchService.get_people_by_nation(nation)
    list.map do |character|
      if characters.count < 25
        characters << Character.new(character)
      end
    end
    return characters
  end
end
