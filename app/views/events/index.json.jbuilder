json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :location, :starts, :ends, :image, :contact_number, :event_link, :slug, :user_id, :business_profile_id
  json.url event_url(event, format: :json)
end
