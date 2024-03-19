class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.references :user_id, null: false, foreign_key: true
      t.string :username
      t.string :secondname
      t.string :lastname
      t.integer :dni
      t.text :profile_img
      t.string :municipality
      t.string :state
      t.string :country, default: "Argentina"
      t.integer :karma, default: 0
      t.boolean :verify, default: false
      t.boolean :banned, default: false

      t.timestamps
    end
  end
end
