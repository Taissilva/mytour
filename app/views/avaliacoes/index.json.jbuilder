json.array!(@avaliacoes) do |avaliacao|
  json.extract! avaliacao, :id, :positiva, :negativa, :usuario_id, :cidade_id, :lugar_id
  json.url avaliacao_url(avaliacao, format: :json)
end
