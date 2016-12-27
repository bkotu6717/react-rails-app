class EventsController < ApplicationController
	def index
		begin
			@events = Event.all
			@result[:data] = JSON.parse(@events.to_json(:include => {:locations => {:except => [:created_at,:updated_at,:id]}}))
	    @result[:status_code] = 200
		 	@result['success_message'] = 'Events successfully listed!!'
		 	render component: 'Events', props: { presenter: @result }
		rescue Exception => e
			@result['error_message'] = e.message
			@result['status_code'] = 400
			render component: 'Events', props: { presenter: e.message }
		end
	end
end
