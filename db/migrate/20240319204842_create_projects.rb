class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.references :project_id, null: false, foreign_key: true
      t.string :project_name, limit: 100
      t.string :project_img
      t.string :project_desciption
      t.integer :project_votes, default: 0
      t.float :project_estimation, default: 0
      t.boolean :project_status, default: false

      t.timestamps
    end
  end
end
