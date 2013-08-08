class Property < ActiveRecord::Base
  attr_accessible :address_no, :area, :email, :floor_cnt, :l_room_cnt,
    :length, :t_room_cnt, :tel, :useable_area, :width,
    :year_built, :area_points_attributes, :photo1
    
  has_many :prices
  has_many :area_points
  
  validates :area, :email, :l_room_cnt, :t_room_cnt, :length, :width,
    :floor_cnt, :l_room_cnt, :photo1, presence: true
  
  accepts_nested_attributes_for :area_points, allow_destroy: true
  
  mount_uploader :photo1, PropertyPhoto1Uploader
end
