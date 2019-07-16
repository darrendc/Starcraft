require "rails_helper"

RSpec.describe "Planet management", :type => :request do

  it "Retrieves planets for a faction" do
    faction = create(:faction)
    create(:planet, faction: faction)

    stub_auth

    get("/factions/#{faction.id}/planets.json", headers: { "ACCEPT" => "application/json" } )

    expect(response.content_type).to eq("application/json")
    expect(response).to have_http_status(:success)
  end
end
