class M::NewsCategory < ActiveRecord::Base
  attr_accessible :name
  
  has_many :articles, foreign_key: :m_news_category_id
end
