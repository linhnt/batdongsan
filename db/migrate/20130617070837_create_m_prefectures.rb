class CreateMPrefectures < ActiveRecord::Migration
  def change
    create_table :m_prefectures do |t|
      t.string :name
      t.references :m_city
      t.timestamps
    end
    add_index :m_prefectures, [:name]
  end
end
