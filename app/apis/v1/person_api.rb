module APIS
  module V1
    class PersonApi < Grape::API
      include APIS::V1::Defaults

      # GET /api/v1/products
      resource :products do
        # GET /api/v1/products
        desc "Get all products"
        get "/" do
          get_products
        end
      end
    end
  end
end

