class CreateResignationForms < ActiveRecord::Migration[7.0]
  def change
    create_table :resignation_forms do |t|
      t.string :project_involved
      t.string :resignation_cause
      t.string :people_involved
      t.string :possible_solution
      t.string :additional_information
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
