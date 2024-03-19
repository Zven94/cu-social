class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.references :project_id, null: false, foreign_key: true
      t.string :project_name
      t.string :project_img
      t.string :project_desciption
      t.integer :votes, default: 0
      t.float :estimation, default: 0
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
