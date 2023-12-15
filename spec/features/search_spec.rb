require "rails_helper"

RSpec.describe "Search" do
  it "will show the 97 members of the fire nation", :vcr do
    visit "/"
    select "Fire Nation", from: "nation"
    click_button "Search For Members"
    expect(current_path).to eq("/search")
  end

  it "will display information about each member of the fire nation", :vcr do
    visit "/"
    select "Fire Nation", from: "nation"
    click_button "Search For Members"

    expect(page).to have_content("Total number of members: 97")
    expect(page).to have_content("Name: Azula")
    expect(page).to have_content("Affiliation: Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
    expect(page).to have_content("Allies: Ozai, Zuko")
    expect(page).to have_content("Enemies: Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa") 
  end

end