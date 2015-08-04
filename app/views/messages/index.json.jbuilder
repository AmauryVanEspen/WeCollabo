json.array!(@messages) do |message|
  json.extract! message, :id, :sender_id, :subject, :message
  json.url message_url(message, format: :json)
end
