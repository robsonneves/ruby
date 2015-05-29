json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :revenue_id_id
  json.url ingredient_url(ingredient, format: :json)
end
