require 'rails_helper'

RSpec.describe Product, type: :model do

  it "has a valid factory" do
	expect(FactoryGirl.create(:product)).to be_valid
  end

  it "is invalid without name" do
	expect(FactoryGirl.build(:product, name: nil)).not_to be_valid
  end

  it "is invalid without description" do
	expect(FactoryGirl.build(:product, description: nil)).not_to be_valid
  end

  it "is invalid without price" do
	expect(FactoryGirl.build(:product, price: nil)).not_to be_valid
  end

  it "is invalid without advertiser_id" do
	expect(FactoryGirl.build(:product, advertiser_id: nil)).not_to be_valid
  end

  it "is invalid without numberic price" do
	expect(FactoryGirl.build(:product, price: "asd")).not_to be_valid
  end

  it "should have a belongs_to advertiser association" do
	should belong_to(:advertiser)
  end


end
