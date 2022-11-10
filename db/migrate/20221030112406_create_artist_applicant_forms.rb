class CreateArtistApplicantForms < ActiveRecord::Migration[7.0]
  def change
    create_table :artist_applicant_forms do |t|
      t.string :project_title
      t.string :art_form
      t.string :art_style
      t.string :interest_reason
      t.string :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
