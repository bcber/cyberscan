require 'spec_helper'

describe "targets/edit" do
  before(:each) do
    @target = assign(:target, stub_model(Target,
      :name => "MyString",
      :ip_address => "MyString",
      :status => false,
      :report_id => 1
    ))
  end

  it "renders the edit target form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", target_path(@target), "post" do
      assert_select "input#target_name[name=?]", "target[name]"
      assert_select "input#target_ip_address[name=?]", "target[ip_address]"
      assert_select "input#target_status[name=?]", "target[status]"
      assert_select "input#target_report_id[name=?]", "target[report_id]"
    end
  end
end
