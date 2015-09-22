json.array!(@dses) do |dse|
  json.extract! dse, :id, :name
  json.url dse_url(dse, format: :json)
end
