# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :target do
    name "MyString"
    ip_address "MyString"
    status false
    report_id 1
  end
end
