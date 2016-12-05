class CreateMailItems < ActiveRecord::Migration
  def change
    create_table :mail_items do |t|
      t.datetime :date_arrived_pittsburgh
      t.datetime :date_arrived_qatar
      t.datetime :date_delivered
      t.string :sender
      t.text :description
      t.text :comment
      t.integer :shipping_weight
      t.boolean :discard
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
