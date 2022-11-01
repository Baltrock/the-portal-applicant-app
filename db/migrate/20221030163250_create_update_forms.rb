class CreateUpdateForms < ActiveRecord::Migration[7.0]
  def change
    create_table :update_forms do |t|
      t.string :update_title
      t.string :project_involved
      t.string :update_description
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
