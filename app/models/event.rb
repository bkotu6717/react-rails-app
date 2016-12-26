class Event < ApplicationRecord
	has_one :location
	has_one :contact
	validates_presence_of :title, :description, :starts_at, :ends_at, :location, :contact
	has_and_belongs_to_many :users

	# Custom validations
	validate :validate_start_and_end_date

	def validate_start_and_end_date
	end
end
