require "application_system_test_case"

class AvailableFrontstageFormsTest < ApplicationSystemTestCase
  setup do
    @available_frontstage_form = available_frontstage_forms(:one)
  end

  test "visiting the index" do
    visit available_frontstage_forms_url
    assert_selector "h1", text: "Available frontstage forms"
  end

  test "should create available frontstage form" do
    visit available_frontstage_forms_url
    click_on "New available frontstage form"

    fill_in "Admin", with: @available_frontstage_form.admin_id
    fill_in "Applicants needed", with: @available_frontstage_form.applicants_needed
    fill_in "Application window end", with: @available_frontstage_form.application_window_end
    fill_in "Applications", with: @available_frontstage_form.applications
    fill_in "Filled", with: @available_frontstage_form.filled
    fill_in "Project involved", with: @available_frontstage_form.project_involved
    fill_in "Requirements", with: @available_frontstage_form.requirements
    fill_in "Role description", with: @available_frontstage_form.role_description
    fill_in "Role title", with: @available_frontstage_form.role_title
    click_on "Create Available frontstage form"

    assert_text "Available frontstage form was successfully created"
    click_on "Back"
  end

  test "should update Available frontstage form" do
    visit available_frontstage_form_url(@available_frontstage_form)
    click_on "Edit this available frontstage form", match: :first

    fill_in "Admin", with: @available_frontstage_form.admin_id
    fill_in "Applicants needed", with: @available_frontstage_form.applicants_needed
    fill_in "Application window end", with: @available_frontstage_form.application_window_end
    fill_in "Applications", with: @available_frontstage_form.applications
    fill_in "Filled", with: @available_frontstage_form.filled
    fill_in "Project involved", with: @available_frontstage_form.project_involved
    fill_in "Requirements", with: @available_frontstage_form.requirements
    fill_in "Role description", with: @available_frontstage_form.role_description
    fill_in "Role title", with: @available_frontstage_form.role_title
    click_on "Update Available frontstage form"

    assert_text "Available frontstage form was successfully updated"
    click_on "Back"
  end

  test "should destroy Available frontstage form" do
    visit available_frontstage_form_url(@available_frontstage_form)
    click_on "Destroy this available frontstage form", match: :first

    assert_text "Available frontstage form was successfully destroyed"
  end
end
