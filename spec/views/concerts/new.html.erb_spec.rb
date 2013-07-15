require 'spec_helper'

describe "concerts/new" do
  before(:each) do
    assign(:concert, stub_model(Concert,
      :program_id => 1,
      :time => "MyString",
      :location => "MyString",
      :price => 1,
      :ticket_website => "MyString"
    ).as_new_record)
  end

  it "renders new concert form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", concerts_path, "post" do
      assert_select "input#concert_program_id[name=?]", "concert[program_id]"
      assert_select "input#concert_time[name=?]", "concert[time]"
      assert_select "input#concert_location[name=?]", "concert[location]"
      assert_select "input#concert_price[name=?]", "concert[price]"
      assert_select "input#concert_ticket_website[name=?]", "concert[ticket_website]"
    end
  end
end
