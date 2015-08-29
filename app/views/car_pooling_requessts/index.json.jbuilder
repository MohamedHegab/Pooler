json.array!(@car_pooling_requessts) do |car_pooling_requesst|
  json.extract! car_pooling_requesst, :id, :email, :password, :user_id, :travel_id, :prefer_from, :prefer_to
  json.url car_pooling_requesst_url(car_pooling_requesst, format: :json)
end
