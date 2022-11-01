require "test_helper"

class CrewApplicantFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crew_applicant_form = crew_applicant_forms(:one)
  end

  test "should get index" do
    get crew_applicant_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_crew_applicant_form_url
    assert_response :success
  end

  test "should create crew_applicant_form" do
    assert_difference("CrewApplicantForm.count") do
      post crew_applicant_forms_url, params: { crew_applicant_form: { availability: @crew_applicant_form.availability, experience_level: @crew_applicant_form.experience_level, interest_reason: @crew_applicant_form.interest_reason, preferred_role: @crew_applicant_form.preferred_role, project_title: @crew_applicant_form.project_title, user_id: @crew_applicant_form.user_id } }
    end

    assert_redirected_to crew_applicant_form_url(CrewApplicantForm.last)
  end

  test "should show crew_applicant_form" do
    get crew_applicant_form_url(@crew_applicant_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_crew_applicant_form_url(@crew_applicant_form)
    assert_response :success
  end

  test "should update crew_applicant_form" do
    patch crew_applicant_form_url(@crew_applicant_form), params: { crew_applicant_form: { availability: @crew_applicant_form.availability, experience_level: @crew_applicant_form.experience_level, interest_reason: @crew_applicant_form.interest_reason, preferred_role: @crew_applicant_form.preferred_role, project_title: @crew_applicant_form.project_title, user_id: @crew_applicant_form.user_id } }
    assert_redirected_to crew_applicant_form_url(@crew_applicant_form)
  end

  test "should destroy crew_applicant_form" do
    assert_difference("CrewApplicantForm.count", -1) do
      delete crew_applicant_form_url(@crew_applicant_form)
    end

    assert_redirected_to crew_applicant_forms_url
  end
end
