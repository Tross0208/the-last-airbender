class Character
  attr_reader :name, :id, :allies, :enemies, :affiliation, :photo_url
  def initialize(data)
    @name = data[:name]
    @id = data[:_id]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation =  data[:affiliation]
    @photo_url = data[:photoUrl]
  end

end
