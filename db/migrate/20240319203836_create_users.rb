class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.references :user_id, null: false, foreign_key: true
      t.string :user_name
      t.string :user_second_name
      t.string :user_last_name
      t.integer :user_dni
      t.text :user_img
      t.string :user_municipality
      t.string :user_state
      t.string :user_country, default: "Argentina"
      t.integer :user_karma, default: 0
      t.boolean :user_verify, default: false
      t.boolean :user_banned, default: false

      t.timestamps
    end
  end
end
