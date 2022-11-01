require "application_system_test_case"

class AvailableBackstageFormsTest < ApplicationSystemTestCase
  setup do
    @available_backstage_form = available_backstage_forms(:one)
  end

  test "visiting the index" do
    visit available_backstage_forms_url
    assert_selector "h1", text: "Available backstage forms"
  end

  test "should create available backstage form" do
    visit available_backstage_forms_url
    click_on "New available backstage form"

    fill_in "Admin", with: @available_backstage_form.admin_id
    fill_in "Applicants needed", with: @available_backstage_form.applicants_needed
    fill_in "Application window end", with: @available_backstage_form.application_window_end
    fill_in "Applications", with: @available_backstage_form.applications
    fill_in "Filled", with: @available_backstage_form.filled
    fill_in "Project involved", with: @available_backstage_form.project_involved
    fill_in "Requirements", with: @available_backstage_form.requirements
    fill_in "Role description", with: @available_backstage_form.role_description
    fill_in "Role title", with: @available_backstage_form.role_title
    click_on "Create Available backstage form"

    assert_text "Available backstage form was successfully created"
    click_on "Back"
  end

  test "should update Available backstage form" do
    visit available_backstage_form_url(@available_backstage_form)
    click_on "Edit this available backstage form", match: :first

    fill_in "Admin", with: @available_backstage_form.admin_id
    fill_in "Applicants needed", with: @available_backstage_form.applicants_needed
    fill_in "Application window end", with: @available_backstage_form.application_window_end
    fill_in "Applications", with: @available_backstage_form.applications
    fill_in "Filled", with: @available_backstage_form.filled
    fill_in "Project involved", with: @available_backstage_form.project_involved
    fill_in "Requirements", with: @available_backstage_form.requirements
    fill_in "Role description", with: @available_backstage_form.role_description
    fill_in "Role title", with: @available_backstage_form.role_title
    click_on "Update Available backstage form"

    assert_text "Available backstage form was successfully updated"
    click_on "Back"
  end

  test "should destroy Available backstage form" do
    visit available_backstage_form_url(@available_backstage_form)
    click_on "Destroy this available backstage form", match: :first

    assert_text "Available backstage form was successfully destroyed"
  end
end
