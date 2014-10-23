json.array!(@emails) do |email|
  json.extract! email, :id, :emails
  json.url email_url(email, format: :json)
end
