require 'spec_helper'

describe "concerts/index" do
  before(:each) do
    assign(:concerts, [
      stub_model(Concert,
        :program_id => 1,
        :time => "Time",
        :location => "Location",
        :price => 2,
        :ticket_website => "Ticket Website"
      ),
      stub_model(Concert,
        :program_id => 1,
        :time => "Time",
        :location => "Location",
        :price => 2,
        :ticket_website => "Ticket Website"
      )
    ])
  end

  it "renders a list of concerts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Ticket Website".to_s, :count => 2
  end
end
