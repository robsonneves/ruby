json.array!(@revenues) do |revenue|
  json.extract! revenue, :id, :name,
  json.url revenue_url(revenue, format: :json)
end
