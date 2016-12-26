require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "check Contact attributes" do
		contact = Contact.create(name: "User name",email: "nomail@gmial.com",phone: "0123654789")
		expect(contact).to have_attributes(:name => "User name",:email => "nomail@gmial.com",:phone => "0123654789")
  end
  it "is not valid without a email" do
  	contact = Contact.new(email: nil)
  	expect(contact).to_not be_valid
  	expect(contact.errors[:email]).to include("can't be blank")
  end
end
