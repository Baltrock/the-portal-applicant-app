class RemoveVidFromDb < ActiveRecord::Migration[7.0]
  def change
    remove_column :actor_applicant_forms, :audition_submission, :string
  end
end
