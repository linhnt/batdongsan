class Property < ActiveRecord::Base
  attr_accessible :address_no, :area, :email, :floor_cnt, :l_room_cnt,
    :length, :t_room_cnt, :tel, :useable_area, :width, :year_built
    
  has_many :prices
  has_many :area_points
end
