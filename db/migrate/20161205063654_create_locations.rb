class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :latitude
      t.string :longitude
      t.integer :mail_item_id

      t.timestamps null: false
    end
  end
end
