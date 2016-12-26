class Event < ApplicationRecord
	has_one :location
	has_one :contact
	validates_presence_of :title, :description, :starts_at, :ends_at, :location, :contact
end
