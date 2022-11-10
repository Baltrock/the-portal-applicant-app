require "test_helper"

class ManagementRequestFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @management_request_form = management_request_forms(:one)
  end

  test "should get index" do
    get management_request_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_management_request_form_url
    assert_response :success
  end

  test "should create management_request_form" do
    assert_difference("ManagementRequestForm.count") do
      post management_request_forms_url, params: { management_request_form: { outcome_expectation: @management_request_form.outcome_expectation, people_involved: @management_request_form.people_involved, project_involved: @management_request_form.project_involved, request_purpose: @management_request_form.request_purpose, request_target: @management_request_form.request_target } }
    end

    assert_redirected_to management_request_form_url(ManagementRequestForm.last)
  end

  test "should show management_request_form" do
    get management_request_form_url(@management_request_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_management_request_form_url(@management_request_form)
    assert_response :success
  end

  test "should update management_request_form" do
    patch management_request_form_url(@management_request_form), params: { management_request_form: { outcome_expectation: @management_request_form.outcome_expectation, people_involved: @management_request_form.people_involved, project_involved: @management_request_form.project_involved, request_purpose: @management_request_form.request_purpose, request_target: @management_request_form.request_target } }
    assert_redirected_to management_request_form_url(@management_request_form)
  end

  test "should destroy management_request_form" do
    assert_difference("ManagementRequestForm.count", -1) do
      delete management_request_form_url(@management_request_form)
    end

    assert_redirected_to management_request_forms_url
  end
end
