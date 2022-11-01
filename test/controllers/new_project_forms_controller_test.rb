require "test_helper"

class NewProjectFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_project_form = new_project_forms(:one)
  end

  test "should get index" do
    get new_project_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_new_project_form_url
    assert_response :success
  end

  test "should create new_project_form" do
    assert_difference("NewProjectForm.count") do
      post new_project_forms_url, params: { new_project_form: { admin_id: @new_project_form.admin_id, available_backstage_roles: @new_project_form.available_backstage_roles, available_frontstage_roles: @new_project_form.available_frontstage_roles, project_description: @new_project_form.project_description, project_introduction: @new_project_form.project_introduction, project_title: @new_project_form.project_title } }
    end

    assert_redirected_to new_project_form_url(NewProjectForm.last)
  end

  test "should show new_project_form" do
    get new_project_form_url(@new_project_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_project_form_url(@new_project_form)
    assert_response :success
  end

  test "should update new_project_form" do
    patch new_project_form_url(@new_project_form), params: { new_project_form: { admin_id: @new_project_form.admin_id, available_backstage_roles: @new_project_form.available_backstage_roles, available_frontstage_roles: @new_project_form.available_frontstage_roles, project_description: @new_project_form.project_description, project_introduction: @new_project_form.project_introduction, project_title: @new_project_form.project_title } }
    assert_redirected_to new_project_form_url(@new_project_form)
  end

  test "should destroy new_project_form" do
    assert_difference("NewProjectForm.count", -1) do
      delete new_project_form_url(@new_project_form)
    end

    assert_redirected_to new_project_forms_url
  end
end
