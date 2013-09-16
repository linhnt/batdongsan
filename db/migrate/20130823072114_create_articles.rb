class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :thumbnail
      t.text :content
      t.text :summary
      t.references :m_news_category

      t.timestamps
    end
  end
end
