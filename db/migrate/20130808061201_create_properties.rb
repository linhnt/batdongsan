class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.float :area
      t.float :length
      t.float :width
      t.float :useable_area
      t.string :sale_type
      t.string :build_type
      t.string :ownage_type
      t.string :owner
      t.string :street
      t.integer :floor_cnt
      t.integer :l_room_cnt
      t.integer :t_room_cnt
      t.date :year_built
      t.integer :tel
      t.string :email
      t.string :address_no
      t.string :photo1
      t.references :m_prefecture
      t.references :m_city
      t.references :m_district

      t.timestamps
    end
  end
end
