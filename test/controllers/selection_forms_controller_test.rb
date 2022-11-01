require "test_helper"

class SelectionFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @selection_form = selection_forms(:one)
  end

  test "should get index" do
    get selection_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_selection_form_url
    assert_response :success
  end

  test "should create selection_form" do
    assert_difference("SelectionForm.count") do
      post selection_forms_url, params: { selection_form: { admin_id: @selection_form.admin_id, applicant_selected: @selection_form.applicant_selected, project_involved: @selection_form.project_involved, role_involved: @selection_form.role_involved } }
    end

    assert_redirected_to selection_form_url(SelectionForm.last)
  end

  test "should show selection_form" do
    get selection_form_url(@selection_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_selection_form_url(@selection_form)
    assert_response :success
  end

  test "should update selection_form" do
    patch selection_form_url(@selection_form), params: { selection_form: { admin_id: @selection_form.admin_id, applicant_selected: @selection_form.applicant_selected, project_involved: @selection_form.project_involved, role_involved: @selection_form.role_involved } }
    assert_redirected_to selection_form_url(@selection_form)
  end

  test "should destroy selection_form" do
    assert_difference("SelectionForm.count", -1) do
      delete selection_form_url(@selection_form)
    end

    assert_redirected_to selection_forms_url
  end
end
