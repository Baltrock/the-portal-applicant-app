require "application_system_test_case"

class ResignationFormsTest < ApplicationSystemTestCase
  setup do
    @resignation_form = resignation_forms(:one)
  end

  test "visiting the index" do
    visit resignation_forms_url
    assert_selector "h1", text: "Resignation forms"
  end

  test "should create resignation form" do
    visit resignation_forms_url
    click_on "New resignation form"

    fill_in "Additional information", with: @resignation_form.additional_information
    fill_in "People involved", with: @resignation_form.people_involved
    fill_in "Possible solution", with: @resignation_form.possible_solution
    fill_in "Project involved", with: @resignation_form.project_involved
    fill_in "Resignation cause", with: @resignation_form.resignation_cause
    fill_in "User", with: @resignation_form.user_id
    click_on "Create Resignation form"

    assert_text "Resignation form was successfully created"
    click_on "Back"
  end

  test "should update Resignation form" do
    visit resignation_form_url(@resignation_form)
    click_on "Edit this resignation form", match: :first

    fill_in "Additional information", with: @resignation_form.additional_information
    fill_in "People involved", with: @resignation_form.people_involved
    fill_in "Possible solution", with: @resignation_form.possible_solution
    fill_in "Project involved", with: @resignation_form.project_involved
    fill_in "Resignation cause", with: @resignation_form.resignation_cause
    fill_in "User", with: @resignation_form.user_id
    click_on "Update Resignation form"

    assert_text "Resignation form was successfully updated"
    click_on "Back"
  end

  test "should destroy Resignation form" do
    visit resignation_form_url(@resignation_form)
    click_on "Destroy this resignation form", match: :first

    assert_text "Resignation form was successfully destroyed"
  end
end
