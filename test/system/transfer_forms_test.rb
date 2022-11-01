require "application_system_test_case"

class TransferFormsTest < ApplicationSystemTestCase
  setup do
    @transfer_form = transfer_forms(:one)
  end

  test "visiting the index" do
    visit transfer_forms_url
    assert_selector "h1", text: "Transfer forms"
  end

  test "should create transfer form" do
    visit transfer_forms_url
    click_on "New transfer form"

    fill_in "Availability", with: @transfer_form.availability
    fill_in "Current project", with: @transfer_form.current_project
    fill_in "Current role", with: @transfer_form.current_role
    fill_in "Outcome expectation", with: @transfer_form.outcome_expectation
    fill_in "Prefered role", with: @transfer_form.prefered_role
    fill_in "Preferred project", with: @transfer_form.preferred_project
    fill_in "Transfer reason", with: @transfer_form.transfer_reason
    fill_in "User", with: @transfer_form.user_id
    click_on "Create Transfer form"

    assert_text "Transfer form was successfully created"
    click_on "Back"
  end

  test "should update Transfer form" do
    visit transfer_form_url(@transfer_form)
    click_on "Edit this transfer form", match: :first

    fill_in "Availability", with: @transfer_form.availability
    fill_in "Current project", with: @transfer_form.current_project
    fill_in "Current role", with: @transfer_form.current_role
    fill_in "Outcome expectation", with: @transfer_form.outcome_expectation
    fill_in "Prefered role", with: @transfer_form.prefered_role
    fill_in "Preferred project", with: @transfer_form.preferred_project
    fill_in "Transfer reason", with: @transfer_form.transfer_reason
    fill_in "User", with: @transfer_form.user_id
    click_on "Update Transfer form"

    assert_text "Transfer form was successfully updated"
    click_on "Back"
  end

  test "should destroy Transfer form" do
    visit transfer_form_url(@transfer_form)
    click_on "Destroy this transfer form", match: :first

    assert_text "Transfer form was successfully destroyed"
  end
end
