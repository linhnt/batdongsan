# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :price do
    price_date "2013-08-08"
    wanted_price 1.5
    rent_price 1.5
    service_price 1.5
    sold_price 1.5
  end
end
