require "test_helper"

class ResignationFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resignation_form = resignation_forms(:one)
  end

  test "should get index" do
    get resignation_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_resignation_form_url
    assert_response :success
  end

  test "should create resignation_form" do
    assert_difference("ResignationForm.count") do
      post resignation_forms_url, params: { resignation_form: { additional_information: @resignation_form.additional_information, people_involved: @resignation_form.people_involved, possible_solution: @resignation_form.possible_solution, project_involved: @resignation_form.project_involved, resignation_cause: @resignation_form.resignation_cause, user_id: @resignation_form.user_id } }
    end

    assert_redirected_to resignation_form_url(ResignationForm.last)
  end

  test "should show resignation_form" do
    get resignation_form_url(@resignation_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_resignation_form_url(@resignation_form)
    assert_response :success
  end

  test "should update resignation_form" do
    patch resignation_form_url(@resignation_form), params: { resignation_form: { additional_information: @resignation_form.additional_information, people_involved: @resignation_form.people_involved, possible_solution: @resignation_form.possible_solution, project_involved: @resignation_form.project_involved, resignation_cause: @resignation_form.resignation_cause, user_id: @resignation_form.user_id } }
    assert_redirected_to resignation_form_url(@resignation_form)
  end

  test "should destroy resignation_form" do
    assert_difference("ResignationForm.count", -1) do
      delete resignation_form_url(@resignation_form)
    end

    assert_redirected_to resignation_forms_url
  end
end
