class CreateMCities < ActiveRecord::Migration
  def change
    create_table :m_cities do |t|
      t.string :name
      t.timestamps
    end
  end
end
