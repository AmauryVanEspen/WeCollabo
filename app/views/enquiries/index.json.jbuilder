json.array!(@enquiries) do |enquiry|
  json.extract! enquiry, :id, :name, :email, :enquiry_type, :message, :phone
  json.url enquiry_url(enquiry, format: :json)
end
