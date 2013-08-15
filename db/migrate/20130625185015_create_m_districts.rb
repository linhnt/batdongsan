class CreateMDistricts < ActiveRecord::Migration
  def change
    create_table :m_districts do |t|
      t.string :name
      t.references :m_prefecture
      t.timestamps
    end
  end
end