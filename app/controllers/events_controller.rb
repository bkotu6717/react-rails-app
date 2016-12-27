class EventsController < ApplicationController
	def index
		begin
			@events = Event.all
			@result[:data] = JSON.parse(@events.to_json(:include => {:locations => {:except => [:created_at,:updated_at,:id]}}))
	    @result[:status_code] = 200
			render json: @result
		rescue Exception => e
			@result[:error_messages] = e
			@result[:status_code] = 400
			render json: @result
		end
	end
end
