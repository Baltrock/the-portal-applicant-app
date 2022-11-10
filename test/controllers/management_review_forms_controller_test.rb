require "test_helper"

class ManagementReviewFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @management_review_form = management_review_forms(:one)
  end

  test "should get index" do
    get management_review_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_management_review_form_url
    assert_response :success
  end

  test "should create management_review_form" do
    assert_difference("ManagementReviewForm.count") do
      post management_review_forms_url, params: { management_review_form: { outcome_recommendation: @management_review_form.outcome_recommendation, people_involved: @management_review_form.people_involved, project_involved: @management_review_form.project_involved, review_purpose: @management_review_form.review_purpose, review_title: @management_review_form.review_title } }
    end

    assert_redirected_to management_review_form_url(ManagementReviewForm.last)
  end

  test "should show management_review_form" do
    get management_review_form_url(@management_review_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_management_review_form_url(@management_review_form)
    assert_response :success
  end

  test "should update management_review_form" do
    patch management_review_form_url(@management_review_form), params: { management_review_form: { outcome_recommendation: @management_review_form.outcome_recommendation, people_involved: @management_review_form.people_involved, project_involved: @management_review_form.project_involved, review_purpose: @management_review_form.review_purpose, review_title: @management_review_form.review_title } }
    assert_redirected_to management_review_form_url(@management_review_form)
  end

  test "should destroy management_review_form" do
    assert_difference("ManagementReviewForm.count", -1) do
      delete management_review_form_url(@management_review_form)
    end

    assert_redirected_to management_review_forms_url
  end
end
