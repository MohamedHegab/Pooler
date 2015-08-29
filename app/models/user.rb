class User < ActiveRecord::Base
	has_many :notifications
	has_many :car_pooling_requessts
	has_many :travels, through: :car_pooling_requessts

	validates :email, format: {with: /\w+@\w+\.com/}
	validates :password, presence: true
end
