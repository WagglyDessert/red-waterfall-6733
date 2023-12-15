class Search
  attr_reader :name, :photo_url, :affiliation, :allies, :enemies

  def initialize(data)
    @name = data[:name]
    @photo_url = data[:photoUrl]
    @affiliation = data[:affiliation]
    @allies = data[:allies]
    @enemies = data[:enemies]
  end
end