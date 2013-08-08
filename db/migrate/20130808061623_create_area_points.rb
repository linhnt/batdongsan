class CreateAreaPoints < ActiveRecord::Migration
  def change
    create_table :area_points do |t|
      
      t.references :properties
      t.decimal :latitude, {precision: 15, scale: 12}
      t.decimal :longitude, {precision: 15, scale: 12}
      t.timestamps
    end
  end
end
