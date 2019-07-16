require 'rails_helper'

RSpec.describe Character, type: :model do
  describe "is not valid" do
    it "without a name" do
      character = build(:character, name: nil)
      expect(character).to_not be_valid
    end
  end
end
