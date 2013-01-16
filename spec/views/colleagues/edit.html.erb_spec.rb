require 'spec_helper'

describe "colleagues/edit" do
  before(:each) do
    @colleague = assign(:colleague, stub_model(Colleague,
      :first_name => "MyString",
      :last_name => "MyString",
      :middle_name => "MyString"
    ))
  end

  it "renders the edit colleague form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => colleagues_path(@colleague), :method => "post" do
      assert_select "input#colleague_first_name", :name => "colleague[first_name]"
      assert_select "input#colleague_last_name", :name => "colleague[last_name]"
      assert_select "input#colleague_middle_name", :name => "colleague[middle_name]"
    end
  end
end
