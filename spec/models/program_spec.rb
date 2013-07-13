require 'spec_helper'

describe Program do
	it "can be created in database" do
		program = Program.create
		program.should_not be_nil
		puts "database id of this program: #{program.id}"
	end

	it "has a title" do
		program = Program.create
		program.title = "Elaine"
		puts "database title of this program: #{program.title}"
		program.title.should == "Elaine"
	end
end