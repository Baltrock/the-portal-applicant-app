class CreateCrewApplicantForms < ActiveRecord::Migration[7.0]
  def change
    create_table :crew_applicant_forms do |t|
      t.string :project_title
      t.string :preferred_role
      t.string :experience_level
      t.string :interest_reason
      t.string :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
