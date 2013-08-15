class Property < ActiveRecord::Base
  attr_accessible :address_no, :area, :email, :floor_cnt, :l_room_cnt,
    :length, :t_room_cnt, :tel, :useable_area, :width,
    :year_built, :area_points_attributes, :photo1, :sale_type, :build_type,
    :ownage_type, :owner, :street, :m_city_id, :m_prefecture_id, :m_district_id
    
  has_many :prices
  has_many :area_points
  belongs_to :m_prefecture, class_name: M::Prefecture.name
  belongs_to :m_city, class_name: M::City.name
  belongs_to :m_district, class_name: M::District.name
  
  validates :area, :email, :l_room_cnt, :t_room_cnt, :length, :width,
    :floor_cnt, :l_room_cnt, :photo1, presence: true
  
  accepts_nested_attributes_for :area_points, allow_destroy: true
  
  mount_uploader :photo1, PropertyPhoto1Uploader
end
