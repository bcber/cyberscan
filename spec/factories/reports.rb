# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :report do
    target_id 1
    tool "MyString"
    tool_output "MyText"
  end
end
