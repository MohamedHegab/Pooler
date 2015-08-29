json.array!(@notifications) do |notification|
  json.extract! notification, :id, :title, :message, :is_read, :travel_id
  json.url notification_url(notification, format: :json)
end
