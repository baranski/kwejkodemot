# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :demot do
    title "MyString"
    votes_count 1
    active false
    user_id 1
  end
end
