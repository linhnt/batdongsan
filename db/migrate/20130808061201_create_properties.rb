class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.float :area
      t.float :length
      t.float :width
      t.float :useable_area
      t.integer :floor_cnt
      t.integer :l_room_cnt
      t.integer :t_room_cnt
      t.date :year_built
      t.integer :tel
      t.string :email
      t.string :address_no
      t.string :photo1

      t.timestamps
    end
  end
end
