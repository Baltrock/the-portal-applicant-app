require "application_system_test_case"

class ManagementApplicantFormsTest < ApplicationSystemTestCase
  setup do
    @management_applicant_form = management_applicant_forms(:one)
  end

  test "visiting the index" do
    visit management_applicant_forms_url
    assert_selector "h1", text: "Management applicant forms"
  end

  test "should create management applicant form" do
    visit management_applicant_forms_url
    click_on "New management applicant form"

    fill_in "Availability", with: @management_applicant_form.availability
    fill_in "Interest reason", with: @management_applicant_form.interest_reason
    fill_in "Preferred project", with: @management_applicant_form.preferred_project
    fill_in "Preferred role", with: @management_applicant_form.preferred_role
    click_on "Create Management applicant form"

    assert_text "Management applicant form was successfully created"
    click_on "Back"
  end

  test "should update Management applicant form" do
    visit management_applicant_form_url(@management_applicant_form)
    click_on "Edit this management applicant form", match: :first

    fill_in "Availability", with: @management_applicant_form.availability
    fill_in "Interest reason", with: @management_applicant_form.interest_reason
    fill_in "Preferred project", with: @management_applicant_form.preferred_project
    fill_in "Preferred role", with: @management_applicant_form.preferred_role
    click_on "Update Management applicant form"

    assert_text "Management applicant form was successfully updated"
    click_on "Back"
  end

  test "should destroy Management applicant form" do
    visit management_applicant_form_url(@management_applicant_form)
    click_on "Destroy this management applicant form", match: :first

    assert_text "Management applicant form was successfully destroyed"
  end
end
