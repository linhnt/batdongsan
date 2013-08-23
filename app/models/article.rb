class Article < ActiveRecord::Base
  attr_accessible :content, :thumbnail, :title, :m_news_category_id
  
  belongs_to :m_news_category, class_name: M::NewsCategory.name
  
  validates :content, :thumbnail, :title, :m_news_category_id, presence: true
    
  mount_uploader :thumbnail, ArticleThumbnailUploader
end
