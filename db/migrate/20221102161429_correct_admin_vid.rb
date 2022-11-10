class CorrectAdminVid < ActiveRecord::Migration[7.0]
  def change
    rename_column :actor_applicant_forms, :audition_tape, :audition_submission
  end
end
