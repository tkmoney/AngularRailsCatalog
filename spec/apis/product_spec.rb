require 'rails_helper'

describe 'APIS::V1::ProductApi' do
  describe 'GET /api/v1/products' do

    it 'should get an array of products' do
      get '/api/v1/products'

      expect(response.status).to eql 200
      expect_json_types :array
    end

    it 'should disallow POST' do
      post '/api/v1/products'

      expect(response.status).to eql 405
    end

  end

  describe 'GET /api/v1/product/:id' do
    before(:each) do
      mock_advertiser = Advertiser.create!(name: "Test Advertiser")
      Product.create!(name: "Name", description: "MyText", price: "9.99", advertiser_id: 1, advertiser: mock_advertiser)
    end

    it 'should get a product by id' do
      get '/api/v1/product/1'

      expect(response.status).to eql 200
      expect_json_types :object
    end

    it 'should have a name' do
      get '/api/v1/product/1'

      expect_json(name: "Name")
    end

    it 'should have a description' do
      get '/api/v1/product/1'

      expect_json(description: "MyText")
    end

    it 'should have a price' do
      get '/api/v1/product/1'

      expect_json(price: "9.99")
    end

    it 'should have a advertiser_id' do
      get '/api/v1/product/1'

      expect_json(advertiser_id: 1)
    end

    it 'should have an advertiser associated' do
      get '/api/v1/product/1'

      expect_json_types(advertiser: :object)
    end

  end

end
