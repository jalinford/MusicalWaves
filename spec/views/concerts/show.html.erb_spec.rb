require 'spec_helper'

describe "concerts/show" do
  before(:each) do
    @concert = assign(:concert, stub_model(Concert,
      :program_id => 1,
      :time => "Time",
      :location => "Location",
      :price => 2,
      :ticket_website => "Ticket Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Time/)
    rendered.should match(/Location/)
    rendered.should match(/2/)
    rendered.should match(/Ticket Website/)
  end
end
