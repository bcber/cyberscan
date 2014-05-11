require 'spec_helper'

describe "targets/new" do
  before(:each) do
    assign(:target, stub_model(Target,
      :name => "MyString",
      :ip_address => "MyString",
      :status => false,
      :report_id => 1
    ).as_new_record)
  end

  it "renders new target form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", targets_path, "post" do
      assert_select "input#target_name[name=?]", "target[name]"
      assert_select "input#target_ip_address[name=?]", "target[ip_address]"
      assert_select "input#target_status[name=?]", "target[status]"
      assert_select "input#target_report_id[name=?]", "target[report_id]"
    end
  end
end
