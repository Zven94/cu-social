class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.references :product_id, null: false, foreign_key: true
      t.string :product_name
      t.string :product_img
      t.string :product_desciption
      t.integer :product_votes, default: 0
      t.float :product_price, default: 0
      t.boolean :product_status, default: false
      t.boolean :product_sold, default: false

      t.timestamps
    end
  end
end
