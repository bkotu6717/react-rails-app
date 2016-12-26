require 'rails_helper'

RSpec.describe Location, type: :model do
  it "check location attributes" do
  	event = Event.create(line1: "lane1",line2: "lane2",city: "Chennai",country: "India",pin: "600038")
  	expect(event).to have_attributes(:title => "sample event", :description => "sample description")
  end
  it "is not valid without a title" do
  	event = Event.new(title: nil)
  	expect(event).to_not be_valid
  	expect(event.errors[:title]).to include("can't be blank")
  end
  it "is not valid without a description" do
  	event = Event.new(description: nil)
  	expect(event).to_not be_valid
  	expect(event.errors[:description]).to include("can't be blank")
  end
  it "is not valid without a starts_at" do
  	event = Event.new(starts_at: nil)
  	expect(event).to_not be_valid
  	expect(event.errors[:starts_at]).to include("can't be blank")
  end
  it "is not valid without a ends_at" do
  	event = Event.new(ends_at: nil)
  	expect(event).to_not be_valid
  	expect(event.errors[:ends_at]).to include("can't be blank")
  end
end
