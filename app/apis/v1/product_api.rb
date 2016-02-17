module APIS
  module V1
    class ProductApi < Grape::API
      include APIS::V1::Defaults

      # GET /api/v1/products
      resource :products do
        # GET /api/v1/products
        desc "Get all products"
        get "/" do
          get_products
        end
      end

      # GET /api/v1/product/:id
      resource :product do
        desc "Get product by id"
        params do
          requires :id, type: Integer
        end
        get "/:id" do
          get_product(params[:id])
        end
      end

    end
  end
end

