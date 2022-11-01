class CreateAvailableFrontstageForms < ActiveRecord::Migration[7.0]
  def change
    create_table :available_frontstage_forms do |t|
      t.string :role_title
      t.string :project_involved
      t.string :role_description
      t.string :requirements
      t.string :applicants_needed
      t.string :applications
      t.string :filled
      t.timestamp :application_window_end
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
