require 'rails_helper'

RSpec.describe Faction, type: :model do
  describe "is not valid" do
    it "without a name" do
      faction = build(:faction, name: nil)
      expect(faction).to_not be_valid
    end

    it "without a description" do
      faction = build(:faction, description: nil)
      expect(faction).to_not be_valid
    end
  end
end
