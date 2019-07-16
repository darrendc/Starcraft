require 'rails_helper'

RSpec.describe Planet, type: :model do
  describe "is not valid" do
    it "without a name" do
      planet = build(:planet, name: nil)
      expect(planet).to_not be_valid
    end
  end
end
