class CreateMNewsCategories < ActiveRecord::Migration
  def change
    create_table :m_news_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
