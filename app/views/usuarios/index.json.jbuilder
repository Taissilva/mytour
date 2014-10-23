json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :login, :senha, :nome, :email_id
  json.url usuario_url(usuario, format: :json)
end
