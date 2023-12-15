class SearchFacade
  #init
  def initialize
    @service = SearchService.new
  end

  #nation members
  def nation_members(nation)
    response = @service.nation_members(nation)
    #want to return ruby objects
    data = JSON.parse(response.body, symbolize_names: true)

    #require 'pry'; binding.pry
    #make a Poro
    data.map do |d|
      Search.new(d)
    end
  end
end