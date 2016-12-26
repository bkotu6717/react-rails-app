class Event < ApplicationRecord
	has_and_belongs_to_many :users
	has_and_belongs_to_many :locations
	has_and_belongs_to_many :contacts

	validates_presence_of :title, :description, :starts_at, :ends_at, :locations, :contacts
	# Custom validations
	validate :validate_start_and_end_date

	def validate_start_and_end_date
	end
end
