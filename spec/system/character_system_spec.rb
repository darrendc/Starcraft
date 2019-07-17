require "rails_helper"

RSpec.describe "Character System Spec", type: :system do
  it "Creates a new character" do
    player = create :player
    faction = create(:faction, name: "Zerg")
    stub_auth
    visit "/players/#{player.id}"

    fill_in "character_name", with: "Xavier"
    select('Zerg', from: 'character[faction_id]')
    click_button "Create Hero"

    expect(page).to have_content("Xavier")
    expect(page).to have_content('Zerg')
  end
end
