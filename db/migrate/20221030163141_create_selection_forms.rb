class CreateSelectionForms < ActiveRecord::Migration[7.0]
  def change
    create_table :selection_forms do |t|
      t.string :role_involved
      t.string :project_involved
      t.string :applicant_selected
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
