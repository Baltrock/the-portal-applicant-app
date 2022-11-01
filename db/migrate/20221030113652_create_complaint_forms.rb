class CreateComplaintForms < ActiveRecord::Migration[7.0]
  def change
    create_table :complaint_forms do |t|
      t.string :project_involved
      t.string :complaint_cause
      t.string :people_involved
      t.string :desired_action
      t.string :additional_information
      t.string :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
