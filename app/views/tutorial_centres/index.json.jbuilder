json.array!(@tutorial_centres) do |tutorial_centre|
  json.extract! tutorial_centre, :id, :name, :address, :phone, :website
  json.url tutorial_centre_url(tutorial_centre, format: :json)
end
