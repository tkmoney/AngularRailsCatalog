require 'rails_helper'

RSpec.describe "advertisers/index", type: :view do
  before(:each) do
    assign(:advertisers, [
      Advertiser.create!(
        :name => ""
      ),
      Advertiser.create!(
        :name => ""
      )
    ])
  end

  it "renders a list of advertisers" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
