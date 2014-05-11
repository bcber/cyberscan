require 'spec_helper'

describe "targets/show" do
  before(:each) do
    @target = assign(:target, stub_model(Target,
      :name => "Name",
      :ip_address => "Ip Address",
      :status => false,
      :report_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Ip Address/)
    rendered.should match(/false/)
    rendered.should match(/1/)
  end
end
