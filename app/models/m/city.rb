class M::City < ActiveRecord::Base
  attr_accessible :name
  
  has_many :m_prefectures, class_name: M::Prefecture.name,
    foreign_key: :m_city_id, dependent: :restrict
    
  has_many :m_districts, through: :m_prefectures
  
  has_many :properties, foreign_key: :m_city_id
  
end
