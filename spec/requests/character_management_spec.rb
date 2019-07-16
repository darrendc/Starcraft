require "rails_helper"

RSpec.describe "Character management", :type => :request do

  it "Posts created character" do
    player = create(:player)
    character = create(:character)
    faction = create(:faction)

    stub_auth

    post("/players/#{player.id}", headers: { "ACCEPT" => "application/json" } )

    expect(response.content_type).to eq("application/json")
    expect(response).to have_http_status(:success)
  end
end
