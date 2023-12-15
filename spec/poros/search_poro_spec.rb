require "rails_helper"

RSpec.describe Search do
  it "exists" do
    attrs = {
      name: "Big Boy",
      photoUrl: "https://www.bigboy.com",
      affiliation: "BBG",
      allies: "Mr. Pib",
      enemies: "Dr. Pepper"
    }

    search = Search.new(attrs)

    expect(search).to be_a Search
    expect(search.name).to eq("Big Boy")
    expect(search.photo_url).to eq("https://www.bigboy.com")
    expect(search.affiliation).to eq("BBG")
    expect(search.allies).to eq("Mr. Pib")
    expect(search.enemies).to eq("Dr. Pepper")
  end
end