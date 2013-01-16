require 'spec_helper'

describe "colleagues/show" do
  before(:each) do
    @colleague = assign(:colleague, stub_model(Colleague,
      :first_name => "First Name",
      :last_name => "Last Name",
      :middle_name => "Middle Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Middle Name/)
  end
end
