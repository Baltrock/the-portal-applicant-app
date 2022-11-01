require "test_helper"

class TransferFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transfer_form = transfer_forms(:one)
  end

  test "should get index" do
    get transfer_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_transfer_form_url
    assert_response :success
  end

  test "should create transfer_form" do
    assert_difference("TransferForm.count") do
      post transfer_forms_url, params: { transfer_form: { availability: @transfer_form.availability, current_project: @transfer_form.current_project, current_role: @transfer_form.current_role, outcome_expectation: @transfer_form.outcome_expectation, prefered_role: @transfer_form.prefered_role, preferred_project: @transfer_form.preferred_project, transfer_reason: @transfer_form.transfer_reason, user_id: @transfer_form.user_id } }
    end

    assert_redirected_to transfer_form_url(TransferForm.last)
  end

  test "should show transfer_form" do
    get transfer_form_url(@transfer_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_transfer_form_url(@transfer_form)
    assert_response :success
  end

  test "should update transfer_form" do
    patch transfer_form_url(@transfer_form), params: { transfer_form: { availability: @transfer_form.availability, current_project: @transfer_form.current_project, current_role: @transfer_form.current_role, outcome_expectation: @transfer_form.outcome_expectation, prefered_role: @transfer_form.prefered_role, preferred_project: @transfer_form.preferred_project, transfer_reason: @transfer_form.transfer_reason, user_id: @transfer_form.user_id } }
    assert_redirected_to transfer_form_url(@transfer_form)
  end

  test "should destroy transfer_form" do
    assert_difference("TransferForm.count", -1) do
      delete transfer_form_url(@transfer_form)
    end

    assert_redirected_to transfer_forms_url
  end
end
