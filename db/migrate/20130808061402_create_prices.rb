class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.references :properties
      t.date :price_date
      t.float :wanted_price
      t.float :rent_price
      t.float :service_price
      t.float :sold_price

      t.timestamps
    end
  end
end
