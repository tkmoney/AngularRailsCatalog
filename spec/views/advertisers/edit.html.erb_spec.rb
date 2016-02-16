require 'rails_helper'

RSpec.describe "advertisers/edit", type: :view do
  before(:each) do
    @advertiser = assign(:advertiser, Advertiser.create!(
      :name => ""
    ))
  end

  it "renders the edit advertiser form" do
    render

    assert_select "form[action=?][method=?]", advertiser_path(@advertiser), "post" do

      assert_select "input#advertiser_name[name=?]", "advertiser[name]"
    end
  end
end
