# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_info do
    user_id 1
    firstname "MyString"
    lastname "MyString"
    firstname_kana "MyString"
    lastname_kana "MyString"
    tel "MyString"
    sex 1
    post_code "MyString"
    address1 "MyString"
    address2 "MyString"
    birthday "2014-05-23"
  end
end
