class SearchService 
  def conn
    conn = Faraday.new("https://last-airbender-api.fly.dev")
  end

  def nation_members(nation)
    response = conn.get("/api/v1/characters?perPage=400&affiliation=#{nation}")
  end

end