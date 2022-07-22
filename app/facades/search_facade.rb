class SearchFacade
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
