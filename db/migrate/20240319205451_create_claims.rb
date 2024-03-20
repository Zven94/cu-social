class CreateClaims < ActiveRecord::Migration[7.1]
  def change
    create_table :claims do |t|
      t.references :claims_id, null: false, foreign_key: true
      t.string :claims_name
      t.string :claims_img
      t.string :claims_desciption
      t.integer :claims_votes, default: 0
      t.boolean :claims_status, default: false

      t.timestamps
    end
  end
end
