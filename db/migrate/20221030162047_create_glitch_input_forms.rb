class CreateGlitchInputForms < ActiveRecord::Migration[7.0]
  def change
    create_table :glitch_input_forms do |t|
      t.string :glitch_title
      t.string :glitch_message
      t.string :spoiler_hint
      t.string :riddle_hint

      t.timestamps
    end
  end
end
