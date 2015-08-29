class City < ActiveRecord::Base
	has_one :source, class_name: 'Travel'
	has_one :destination, class_name: 'Travel'

	validates :name, presence: true, length: {maximum: 50}
end
