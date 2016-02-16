require 'rails_helper'

RSpec.describe "advertisers/new", type: :view do
  before(:each) do
    assign(:advertiser, Advertiser.new(
      :name => ""
    ))
  end

  it "renders new advertiser form" do
    render

    assert_select "form[action=?][method=?]", advertisers_path, "post" do

      assert_select "input#advertiser_name[name=?]", "advertiser[name]"
    end
  end
end
