class Notification < ActiveRecord::Base
	belongs_to :user
	belongs_to :travel

	validates :title, presence: true, length: {maximum: 30}
	
end
