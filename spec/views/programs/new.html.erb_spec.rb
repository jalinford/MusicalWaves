require 'spec_helper'

describe "programs/new" do
  before(:each) do
    assign(:program, stub_model(Program,
      :title => "MyString",
      :description => "MyText",
      :website => "MyString"
    ).as_new_record)
  end

  it "renders new program form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", programs_path, "post" do
      assert_select "input#program_title[name=?]", "program[title]"
      assert_select "textarea#program_description[name=?]", "program[description]"
      assert_select "input#program_website[name=?]", "program[website]"
    end
  end
end
