require "rails_helper"

RSpec.describe "Character System Spec", :type => :system do
  before do
    driven_by(:rack_test)
  end

  it "Creates a new character" do
    player = create :player
    stub_auth
    visit "/players/#{player.id}"



    fill_in "character_name", with: "Xavier"
    select('Zerg', from: 'character[faction_id]')
    click_button "Create Hero"
    expect(page).to have_text("Xavier")
    expect(page).to have_select('character[faction_id]', selected: 'Zerg')
  end
end
