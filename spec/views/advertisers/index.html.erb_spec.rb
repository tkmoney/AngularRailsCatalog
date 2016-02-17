require 'rails_helper'

RSpec.describe "advertisers/index", type: :view do
  before(:each) do
    assign(:advertisers, [
      Advertiser.create!(
        :name => "Test Advertiser"
      ),
      Advertiser.create!(
        :name => "Test Advertiser"
      )
    ])
  end

  it "renders a list of advertisers" do
    render
    assert_select "tr>td", :text => "Test Advertiser".to_s, :count => 2
  end
end
