require "application_system_test_case"

class GlitchInputFormsTest < ApplicationSystemTestCase
  setup do
    @glitch_input_form = glitch_input_forms(:one)
  end

  test "visiting the index" do
    visit glitch_input_forms_url
    assert_selector "h1", text: "Glitch input forms"
  end

  test "should create glitch input form" do
    visit glitch_input_forms_url
    click_on "New glitch input form"

    fill_in "Glitch message", with: @glitch_input_form.glitch_message
    fill_in "Glitch title", with: @glitch_input_form.glitch_title
    fill_in "Riddle hint", with: @glitch_input_form.riddle_hint
    fill_in "Spoiler hint", with: @glitch_input_form.spoiler_hint
    click_on "Create Glitch input form"

    assert_text "Glitch input form was successfully created"
    click_on "Back"
  end

  test "should update Glitch input form" do
    visit glitch_input_form_url(@glitch_input_form)
    click_on "Edit this glitch input form", match: :first

    fill_in "Glitch message", with: @glitch_input_form.glitch_message
    fill_in "Glitch title", with: @glitch_input_form.glitch_title
    fill_in "Riddle hint", with: @glitch_input_form.riddle_hint
    fill_in "Spoiler hint", with: @glitch_input_form.spoiler_hint
    click_on "Update Glitch input form"

    assert_text "Glitch input form was successfully updated"
    click_on "Back"
  end

  test "should destroy Glitch input form" do
    visit glitch_input_form_url(@glitch_input_form)
    click_on "Destroy this glitch input form", match: :first

    assert_text "Glitch input form was successfully destroyed"
  end
end
