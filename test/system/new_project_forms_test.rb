require "application_system_test_case"

class NewProjectFormsTest < ApplicationSystemTestCase
  setup do
    @new_project_form = new_project_forms(:one)
  end

  test "visiting the index" do
    visit new_project_forms_url
    assert_selector "h1", text: "New project forms"
  end

  test "should create new project form" do
    visit new_project_forms_url
    click_on "New new project form"

    fill_in "Admin", with: @new_project_form.admin_id
    fill_in "Available backstage roles", with: @new_project_form.available_backstage_roles
    fill_in "Available frontstage roles", with: @new_project_form.available_frontstage_roles
    fill_in "Project description", with: @new_project_form.project_description
    fill_in "Project introduction", with: @new_project_form.project_introduction
    fill_in "Project title", with: @new_project_form.project_title
    click_on "Create New project form"

    assert_text "New project form was successfully created"
    click_on "Back"
  end

  test "should update New project form" do
    visit new_project_form_url(@new_project_form)
    click_on "Edit this new project form", match: :first

    fill_in "Admin", with: @new_project_form.admin_id
    fill_in "Available backstage roles", with: @new_project_form.available_backstage_roles
    fill_in "Available frontstage roles", with: @new_project_form.available_frontstage_roles
    fill_in "Project description", with: @new_project_form.project_description
    fill_in "Project introduction", with: @new_project_form.project_introduction
    fill_in "Project title", with: @new_project_form.project_title
    click_on "Update New project form"

    assert_text "New project form was successfully updated"
    click_on "Back"
  end

  test "should destroy New project form" do
    visit new_project_form_url(@new_project_form)
    click_on "Destroy this new project form", match: :first

    assert_text "New project form was successfully destroyed"
  end
end
