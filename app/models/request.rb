class Request < ActiveRecord::Base
	validates :Name, presence: true, length: {maximum: 50}
	validates :Telephone, presence: true, numericality: true, length: {maximum: 11}
	validates :Age, numericality: true
	validates :Location_From, presence: true
end
