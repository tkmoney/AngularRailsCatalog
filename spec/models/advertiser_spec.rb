require 'rails_helper'

RSpec.describe Advertiser, type: :model do
  
  it "has a valid factory" do
		expect(FactoryGirl.create(:advertiser)).to be_valid
  end

	it "is invalid without name" do
		expect(FactoryGirl.build(:advertiser, name: nil)).not_to be_valid
  end

  it "should have a has_many products association" do
		should have_many(:products)
  end

end
