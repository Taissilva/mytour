json.array!(@lugares) do |lugar|
  json.extract! lugar, :id, :nome, :tipo, :cidade_id
  json.url lugar_url(lugar, format: :json)
end
