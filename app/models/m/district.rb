class M::District < ActiveRecord::Base
  
  attr_accessible :name

  belongs_to :m_prefecture, class_name: M::Prefecture.name
    
  has_many :properties, foreign_key: :m_district_id
end
