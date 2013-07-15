require 'spec_helper'

describe "concerts/edit" do
  before(:each) do
    @concert = assign(:concert, stub_model(Concert,
      :program_id => 1,
      :time => "MyString",
      :location => "MyString",
      :price => 1,
      :ticket_website => "MyString"
    ))
  end

  it "renders the edit concert form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", concert_path(@concert), "post" do
      assert_select "input#concert_program_id[name=?]", "concert[program_id]"
      assert_select "input#concert_time[name=?]", "concert[time]"
      assert_select "input#concert_location[name=?]", "concert[location]"
      assert_select "input#concert_price[name=?]", "concert[price]"
      assert_select "input#concert_ticket_website[name=?]", "concert[ticket_website]"
    end
  end
end
