require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    mock_advertiser = mock_model(Advertiser, name: "Test Advertiser")
    product = mock_model(Product, name: "Name", description: "MyText", price: "9.99", advertiser_id: 1, advertiser: mock_advertiser)

    assign(:products, [
      product,
      product
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Test Advertiser", :count => 2
  end
end
