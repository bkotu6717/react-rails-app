class Contact < ApplicationRecord
	belongs_to :event
	validates_presence_of :email
end
