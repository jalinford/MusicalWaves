require 'spec_helper'

describe Artist do
	it "can be created in database" do
  	artist = Artist.create
  	artist.should_not be_nil
  	puts "database id of this artist: #{artist.id}"
	end	

  it "has a name" do
  	artist = Artist.create
  	artist.name = "Elaine"
  	artist.name.should == "Elaine"
  end

  it "name is of type string" do
  	Artist.columns_hash["name"].type.should == :string
  end

  it "the number of artists is: 0" do
  	Artist.count.should == 0
  end
end
