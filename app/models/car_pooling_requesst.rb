class CarPoolingRequesst < ActiveRecord::Base
	belongs_to :travel
	belongs_to :user

	validates :email, format: {with: /\w+@\w+\.com/}
	validates :password, presence: true
end
