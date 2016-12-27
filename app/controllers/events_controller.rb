class EventsController < ApplicationController
	def index
		begin
			@events = Event.all.includes(:locations)
			@result[:data] = @events
	    @result[:status_code] = 200
			render json: @result
		rescue Exception => e
			@result[:error_messages] = e
			@result[:status_code] = 400
			render json: @result
		end
	end
end
