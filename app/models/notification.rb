class Notification < ActiveRecord::Base
	
	has_many :requests
	
end
