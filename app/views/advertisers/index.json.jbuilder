json.array!(@advertisers) do |advertiser|
  json.extract! advertiser, :id, :name
  json.url advertiser_url(advertiser, format: :json)
end
