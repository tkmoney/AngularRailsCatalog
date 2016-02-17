require 'rails_helper'

RSpec.describe "advertisers/show", type: :view do
  before(:each) do
    @advertiser = assign(:advertiser, Advertiser.create!(
      :name => "Test Advertiser"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
