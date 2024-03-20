class CreateClaims < ActiveRecord::Migration[7.1]
  def change
    create_table :claims do |t|
      t.string :claim_name
      t.string :claims_img
      t.string :claim_description
      t.integer :claim_votes, default: 0
      t.boolean :claim_status, default: false

      t.timestamps
    end
  end
end
