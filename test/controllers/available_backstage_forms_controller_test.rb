require "test_helper"

class AvailableBackstageFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @available_backstage_form = available_backstage_forms(:one)
  end

  test "should get index" do
    get available_backstage_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_available_backstage_form_url
    assert_response :success
  end

  test "should create available_backstage_form" do
    assert_difference("AvailableBackstageForm.count") do
      post available_backstage_forms_url, params: { available_backstage_form: { admin_id: @available_backstage_form.admin_id, applicants_needed: @available_backstage_form.applicants_needed, application_window_end: @available_backstage_form.application_window_end, applications: @available_backstage_form.applications, filled: @available_backstage_form.filled, project_involved: @available_backstage_form.project_involved, requirements: @available_backstage_form.requirements, role_description: @available_backstage_form.role_description, role_title: @available_backstage_form.role_title } }
    end

    assert_redirected_to available_backstage_form_url(AvailableBackstageForm.last)
  end

  test "should show available_backstage_form" do
    get available_backstage_form_url(@available_backstage_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_available_backstage_form_url(@available_backstage_form)
    assert_response :success
  end

  test "should update available_backstage_form" do
    patch available_backstage_form_url(@available_backstage_form), params: { available_backstage_form: { admin_id: @available_backstage_form.admin_id, applicants_needed: @available_backstage_form.applicants_needed, application_window_end: @available_backstage_form.application_window_end, applications: @available_backstage_form.applications, filled: @available_backstage_form.filled, project_involved: @available_backstage_form.project_involved, requirements: @available_backstage_form.requirements, role_description: @available_backstage_form.role_description, role_title: @available_backstage_form.role_title } }
    assert_redirected_to available_backstage_form_url(@available_backstage_form)
  end

  test "should destroy available_backstage_form" do
    assert_difference("AvailableBackstageForm.count", -1) do
      delete available_backstage_form_url(@available_backstage_form)
    end

    assert_redirected_to available_backstage_forms_url
  end
end
