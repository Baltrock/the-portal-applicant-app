require "test_helper"

class AvailableFrontstageFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @available_frontstage_form = available_frontstage_forms(:one)
  end

  test "should get index" do
    get available_frontstage_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_available_frontstage_form_url
    assert_response :success
  end

  test "should create available_frontstage_form" do
    assert_difference("AvailableFrontstageForm.count") do
      post available_frontstage_forms_url, params: { available_frontstage_form: { admin_id: @available_frontstage_form.admin_id, applicants_needed: @available_frontstage_form.applicants_needed, application_window_end: @available_frontstage_form.application_window_end, applications: @available_frontstage_form.applications, filled: @available_frontstage_form.filled, project_involved: @available_frontstage_form.project_involved, requirements: @available_frontstage_form.requirements, role_description: @available_frontstage_form.role_description, role_title: @available_frontstage_form.role_title } }
    end

    assert_redirected_to available_frontstage_form_url(AvailableFrontstageForm.last)
  end

  test "should show available_frontstage_form" do
    get available_frontstage_form_url(@available_frontstage_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_available_frontstage_form_url(@available_frontstage_form)
    assert_response :success
  end

  test "should update available_frontstage_form" do
    patch available_frontstage_form_url(@available_frontstage_form), params: { available_frontstage_form: { admin_id: @available_frontstage_form.admin_id, applicants_needed: @available_frontstage_form.applicants_needed, application_window_end: @available_frontstage_form.application_window_end, applications: @available_frontstage_form.applications, filled: @available_frontstage_form.filled, project_involved: @available_frontstage_form.project_involved, requirements: @available_frontstage_form.requirements, role_description: @available_frontstage_form.role_description, role_title: @available_frontstage_form.role_title } }
    assert_redirected_to available_frontstage_form_url(@available_frontstage_form)
  end

  test "should destroy available_frontstage_form" do
    assert_difference("AvailableFrontstageForm.count", -1) do
      delete available_frontstage_form_url(@available_frontstage_form)
    end

    assert_redirected_to available_frontstage_forms_url
  end
end
