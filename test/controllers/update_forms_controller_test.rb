require "test_helper"

class UpdateFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @update_form = update_forms(:one)
  end

  test "should get index" do
    get update_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_update_form_url
    assert_response :success
  end

  test "should create update_form" do
    assert_difference("UpdateForm.count") do
      post update_forms_url, params: { update_form: { admin_id: @update_form.admin_id, project_involved: @update_form.project_involved, update_description: @update_form.update_description, update_title: @update_form.update_title } }
    end

    assert_redirected_to update_form_url(UpdateForm.last)
  end

  test "should show update_form" do
    get update_form_url(@update_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_update_form_url(@update_form)
    assert_response :success
  end

  test "should update update_form" do
    patch update_form_url(@update_form), params: { update_form: { admin_id: @update_form.admin_id, project_involved: @update_form.project_involved, update_description: @update_form.update_description, update_title: @update_form.update_title } }
    assert_redirected_to update_form_url(@update_form)
  end

  test "should destroy update_form" do
    assert_difference("UpdateForm.count", -1) do
      delete update_form_url(@update_form)
    end

    assert_redirected_to update_forms_url
  end
end
