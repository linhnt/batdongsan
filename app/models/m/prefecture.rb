class M::Prefecture < ActiveRecord::Base
  
  attr_accessible :name

  has_many :m_districts, class_name: M::District.name,
    foreign_key: :m_prefecture_id
    
  belongs_to :m_city, class_name: M::City.name
  
  has_many :properties, foreign_key: :m_prefecture_id
end
