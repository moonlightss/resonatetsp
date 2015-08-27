json.array!(@tutorials) do |tutorial|
  json.extract! tutorial, :id, :Centre, :name, :address, :phone, :website
  json.url tutorial_url(tutorial, format: :json)
end
