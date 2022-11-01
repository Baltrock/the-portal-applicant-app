require "test_helper"

class ComplaintFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complaint_form = complaint_forms(:one)
  end

  test "should get index" do
    get complaint_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_complaint_form_url
    assert_response :success
  end

  test "should create complaint_form" do
    assert_difference("ComplaintForm.count") do
      post complaint_forms_url, params: { complaint_form: { additional_information: @complaint_form.additional_information, availability: @complaint_form.availability, complaint_cause: @complaint_form.complaint_cause, desired_action: @complaint_form.desired_action, people_involved: @complaint_form.people_involved, project_involved: @complaint_form.project_involved, user_id: @complaint_form.user_id } }
    end

    assert_redirected_to complaint_form_url(ComplaintForm.last)
  end

  test "should show complaint_form" do
    get complaint_form_url(@complaint_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_complaint_form_url(@complaint_form)
    assert_response :success
  end

  test "should update complaint_form" do
    patch complaint_form_url(@complaint_form), params: { complaint_form: { additional_information: @complaint_form.additional_information, availability: @complaint_form.availability, complaint_cause: @complaint_form.complaint_cause, desired_action: @complaint_form.desired_action, people_involved: @complaint_form.people_involved, project_involved: @complaint_form.project_involved, user_id: @complaint_form.user_id } }
    assert_redirected_to complaint_form_url(@complaint_form)
  end

  test "should destroy complaint_form" do
    assert_difference("ComplaintForm.count", -1) do
      delete complaint_form_url(@complaint_form)
    end

    assert_redirected_to complaint_forms_url
  end
end
