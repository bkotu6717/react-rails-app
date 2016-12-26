class Location < ApplicationRecord
	belongs_to :event
	validates_presence_of :city,:country,:pin
end
