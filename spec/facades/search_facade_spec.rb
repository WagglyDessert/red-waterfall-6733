require "rails_helper"

RSpec.describe SearchFacade do

  it "::search", :vcr do
    search_results = SearchFacade.new.nation_members("fire nation")
    expect(search_results).to be_a(Array)
    search_results.each do |member|
      expect(member.affiliation).to be_a(String)
      expect(member.allies).to be_a(Array)
      expect(member.enemies).to be_a(Array)
      expect(member.name).to be_a(String)
      expect(member.photo_url).to be_a(String).or be_nil
    end
  end
end