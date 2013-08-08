# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :property do
    area 1.5
    length 1.5
    width 1.5
    useable_area 1.5
    floor_cnt 1
    l_room_cnt 1
    t_room_cnt 1
    year_built "2013-08-08"
    tel 1
    email "MyString"
    address_no "MyString"
  end
end
