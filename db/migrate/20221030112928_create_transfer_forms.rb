class CreateTransferForms < ActiveRecord::Migration[7.0]
  def change
    create_table :transfer_forms do |t|
      t.string :current_project
      t.string :preferred_project
      t.string :current_role
      t.string :prefered_role
      t.string :transfer_reason
      t.string :outcome_expectation
      t.string :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
