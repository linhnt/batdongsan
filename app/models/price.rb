class Price < ActiveRecord::Base
  attr_accessible :price_date, :rent_price, :service_price,
    :sold_price, :wanted_price, :property_id
    
  belongs_to :property
end
