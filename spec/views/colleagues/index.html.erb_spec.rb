require 'spec_helper'

describe "colleagues/index" do
  before(:each) do
    assign(:colleagues, [
      stub_model(Colleague,
        :first_name => "First Name",
        :last_name => "Last Name",
        :middle_name => "Middle Name"
      ),
      stub_model(Colleague,
        :first_name => "First Name",
        :last_name => "Last Name",
        :middle_name => "Middle Name"
      )
    ])
  end

  it "renders a list of colleagues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
  end
end
