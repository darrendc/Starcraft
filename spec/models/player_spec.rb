require 'rails_helper'

RSpec.describe Player, type: :model do
  describe "is not valid" do
    it "without a name" do
      player = build(:player, name: nil)
      expect(player).to_not be_valid
    end

    it "without a password" do
      player = build(:player, password: nil)
      expect(player).to_not be_valid
    end
  end

  describe "#search" do
    it "Finds a player if name matches" do
      player = create(:player, name: "ThunderGod")
      results = Player.search("ThunderGod")
      expect(results.length).to eq(1)
      expect(results.first.name).to eq("ThunderGod")
    end

    it "Does not find a player if name does not match" do
      player = create(:player, name: "ThunderGod")
      results = Player.search("ThunderGoo")
      expect(results.length).to eq(0)
    end
  end
end
