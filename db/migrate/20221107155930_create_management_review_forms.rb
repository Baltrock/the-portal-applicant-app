class CreateManagementReviewForms < ActiveRecord::Migration[7.0]
  def change
    create_table :management_review_forms do |t|
      t.string :review_title
      t.string :project_involved
      t.string :people_involved
      t.string :review_purpose
      t.string :outcome_recommendation

      t.timestamps
    end
  end
end
