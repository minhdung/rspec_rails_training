require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "comment validate" do
    it "should have valid factory" do
      expect(FactoryGirl.build(:comment)).to be_valid
    end
  end

  describe "comment validate" do
    let(:coment) { create :coment }
    it "should have valid factory" do
      expect(FactoryGirl.build(:comment)).to be_valid
    end
  end
end
