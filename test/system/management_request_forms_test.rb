require "application_system_test_case"

class ManagementRequestFormsTest < ApplicationSystemTestCase
  setup do
    @management_request_form = management_request_forms(:one)
  end

  test "visiting the index" do
    visit management_request_forms_url
    assert_selector "h1", text: "Management request forms"
  end

  test "should create management request form" do
    visit management_request_forms_url
    click_on "New management request form"

    fill_in "Outcome expectation", with: @management_request_form.outcome_expectation
    fill_in "People involved", with: @management_request_form.people_involved
    fill_in "Project involved", with: @management_request_form.project_involved
    fill_in "Request purpose", with: @management_request_form.request_purpose
    fill_in "Request target", with: @management_request_form.request_target
    click_on "Create Management request form"

    assert_text "Management request form was successfully created"
    click_on "Back"
  end

  test "should update Management request form" do
    visit management_request_form_url(@management_request_form)
    click_on "Edit this management request form", match: :first

    fill_in "Outcome expectation", with: @management_request_form.outcome_expectation
    fill_in "People involved", with: @management_request_form.people_involved
    fill_in "Project involved", with: @management_request_form.project_involved
    fill_in "Request purpose", with: @management_request_form.request_purpose
    fill_in "Request target", with: @management_request_form.request_target
    click_on "Update Management request form"

    assert_text "Management request form was successfully updated"
    click_on "Back"
  end

  test "should destroy Management request form" do
    visit management_request_form_url(@management_request_form)
    click_on "Destroy this management request form", match: :first

    assert_text "Management request form was successfully destroyed"
  end
end
