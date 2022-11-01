require "application_system_test_case"

class SelectionFormsTest < ApplicationSystemTestCase
  setup do
    @selection_form = selection_forms(:one)
  end

  test "visiting the index" do
    visit selection_forms_url
    assert_selector "h1", text: "Selection forms"
  end

  test "should create selection form" do
    visit selection_forms_url
    click_on "New selection form"

    fill_in "Admin", with: @selection_form.admin_id
    fill_in "Applicant selected", with: @selection_form.applicant_selected
    fill_in "Project involved", with: @selection_form.project_involved
    fill_in "Role involved", with: @selection_form.role_involved
    click_on "Create Selection form"

    assert_text "Selection form was successfully created"
    click_on "Back"
  end

  test "should update Selection form" do
    visit selection_form_url(@selection_form)
    click_on "Edit this selection form", match: :first

    fill_in "Admin", with: @selection_form.admin_id
    fill_in "Applicant selected", with: @selection_form.applicant_selected
    fill_in "Project involved", with: @selection_form.project_involved
    fill_in "Role involved", with: @selection_form.role_involved
    click_on "Update Selection form"

    assert_text "Selection form was successfully updated"
    click_on "Back"
  end

  test "should destroy Selection form" do
    visit selection_form_url(@selection_form)
    click_on "Destroy this selection form", match: :first

    assert_text "Selection form was successfully destroyed"
  end
end
