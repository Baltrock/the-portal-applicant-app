class CreateManagementRequestForms < ActiveRecord::Migration[7.0]
  def change
    create_table :management_request_forms do |t|
      t.string :request_target
      t.string :project_involved
      t.string :people_involved
      t.string :request_purpose
      t.string :outcome_expectation

      t.timestamps
    end
  end
end
