module APIS
  module V1
    class Base < Grape::API
      # base api for v1
      mount APIS::V1::ProductApi
    end
  end
end

