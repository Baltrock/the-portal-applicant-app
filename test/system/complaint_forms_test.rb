require "application_system_test_case"

class ComplaintFormsTest < ApplicationSystemTestCase
  setup do
    @complaint_form = complaint_forms(:one)
  end

  test "visiting the index" do
    visit complaint_forms_url
    assert_selector "h1", text: "Complaint forms"
  end

  test "should create complaint form" do
    visit complaint_forms_url
    click_on "New complaint form"

    fill_in "Additional information", with: @complaint_form.additional_information
    fill_in "Availability", with: @complaint_form.availability
    fill_in "Complaint cause", with: @complaint_form.complaint_cause
    fill_in "Desired action", with: @complaint_form.desired_action
    fill_in "People involved", with: @complaint_form.people_involved
    fill_in "Project involved", with: @complaint_form.project_involved
    fill_in "User", with: @complaint_form.user_id
    click_on "Create Complaint form"

    assert_text "Complaint form was successfully created"
    click_on "Back"
  end

  test "should update Complaint form" do
    visit complaint_form_url(@complaint_form)
    click_on "Edit this complaint form", match: :first

    fill_in "Additional information", with: @complaint_form.additional_information
    fill_in "Availability", with: @complaint_form.availability
    fill_in "Complaint cause", with: @complaint_form.complaint_cause
    fill_in "Desired action", with: @complaint_form.desired_action
    fill_in "People involved", with: @complaint_form.people_involved
    fill_in "Project involved", with: @complaint_form.project_involved
    fill_in "User", with: @complaint_form.user_id
    click_on "Update Complaint form"

    assert_text "Complaint form was successfully updated"
    click_on "Back"
  end

  test "should destroy Complaint form" do
    visit complaint_form_url(@complaint_form)
    click_on "Destroy this complaint form", match: :first

    assert_text "Complaint form was successfully destroyed"
  end
end
