require "application_system_test_case"

class UpdateFormsTest < ApplicationSystemTestCase
  setup do
    @update_form = update_forms(:one)
  end

  test "visiting the index" do
    visit update_forms_url
    assert_selector "h1", text: "Update forms"
  end

  test "should create update form" do
    visit update_forms_url
    click_on "New update form"

    fill_in "Admin", with: @update_form.admin_id
    fill_in "Project involved", with: @update_form.project_involved
    fill_in "Update description", with: @update_form.update_description
    fill_in "Update title", with: @update_form.update_title
    click_on "Create Update form"

    assert_text "Update form was successfully created"
    click_on "Back"
  end

  test "should update Update form" do
    visit update_form_url(@update_form)
    click_on "Edit this update form", match: :first

    fill_in "Admin", with: @update_form.admin_id
    fill_in "Project involved", with: @update_form.project_involved
    fill_in "Update description", with: @update_form.update_description
    fill_in "Update title", with: @update_form.update_title
    click_on "Update Update form"

    assert_text "Update form was successfully updated"
    click_on "Back"
  end

  test "should destroy Update form" do
    visit update_form_url(@update_form)
    click_on "Destroy this update form", match: :first

    assert_text "Update form was successfully destroyed"
  end
end
