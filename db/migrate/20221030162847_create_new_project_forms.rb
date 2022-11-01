class CreateNewProjectForms < ActiveRecord::Migration[7.0]
  def change
    create_table :new_project_forms do |t|
      t.string :project_title
      t.string :project_introduction
      t.string :project_description
      t.string :available_frontstage_roles
      t.string :available_backstage_roles
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
