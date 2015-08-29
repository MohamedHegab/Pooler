json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :class_id, :phone, :age
  json.url user_url(user, format: :json)
end
