class Request < ActiveRecord::Base
	before_save :update_zone
	after_commit :check_notification
	validates :Name, presence: true, length: {maximum: 50}
	validates :Telephone, presence: true, numericality: true, length: {maximum: 11}
	validates :Age, numericality: true
	validates :Location_From, presence: true

	belongs_to :notification
	def update_zone
		if (self.Location_From == 'Cairo' || self.Location_From == 'Alex')
			self.zone = 'Zone A'
		elsif (self.Location_From == 'Mansoura' || self.Location_From == 'Tanta')
			self.zone = 'Zone B'
		elsif (self.Location_From == 'Hurghada' || self.Location_From == 'Gouna' || self.Location_From == 'Sokhna')
			self.zone = 'Zone C'
		else
			self.zone = 'Zone D'
		end
	end

	def check_notification
    @requests = Request.all
    @notifcations = Notification.all
    @requests.each_index do |x|
      if(Request.where(Location_From: @requests[x].Location_From,Location_Destination: @requests[x].Location_Destination,Travel_date: @requests[x].Travel_date,notification_id: nil).count >= 3 )
        @noti = Notification.create(source: @requests[x].Location_From,destination: @requests[x].Location_Destination, date: @requests[x].Travel_date)
        var = Request.where(Location_From: @requests[x].Location_From,Location_Destination: @requests[x].Location_Destination,Travel_date: @requests[x].Travel_date,notification_id: nil).pluck(:id)
        @requests[0].notification_id = @noti.id
        @requests[0].save
      end
    end
  end
end
