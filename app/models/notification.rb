class Notification < ActiveRecord::Base
	
	has_many :requests, dependent: :destroy
	
end
