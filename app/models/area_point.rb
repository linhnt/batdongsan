class AreaPoint < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :property_id
  
  belongs_to :property
end
