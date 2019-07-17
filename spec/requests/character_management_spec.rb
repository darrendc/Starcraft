require "rails_helper"

RSpec.describe "Character management", :type => :request do

  it "Posts created character" do
    player = create(:player)
    faction = create(:faction)
    # character = create(:character, faction_id: faction.id)
    character_params = { "character" => {"name" => "Joe", "player_id" => player.id, "faction_id" => faction.id } }

    stub_auth

    post("/characters", params: character_params, headers: { "ACCEPT" => "application/json" } )

    expect(response.content_type).to eq("application/json")
    expect(response).to have_http_status(:success)
  end
end
