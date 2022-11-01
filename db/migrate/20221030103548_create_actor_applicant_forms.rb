class CreateActorApplicantForms < ActiveRecord::Migration[7.0]
  def change
    create_table :actor_applicant_forms do |t|
      t.string :project_title
      t.string :preferred_role
      t.string :interest_reason
      t.string :availability
      t.string :audition_tape
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
