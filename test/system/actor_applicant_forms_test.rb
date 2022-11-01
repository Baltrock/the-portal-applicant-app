require "application_system_test_case"

class ActorApplicantFormsTest < ApplicationSystemTestCase
  setup do
    @actor_applicant_form = actor_applicant_forms(:one)
  end

  test "visiting the index" do
    visit actor_applicant_forms_url
    assert_selector "h1", text: "Actor applicant forms"
  end

  test "should create actor applicant form" do
    visit actor_applicant_forms_url
    click_on "New actor applicant form"

    fill_in "Audition tape", with: @actor_applicant_form.audition_tape
    fill_in "Availability", with: @actor_applicant_form.availability
    fill_in "Interest reason", with: @actor_applicant_form.interest_reason
    fill_in "Preferred role", with: @actor_applicant_form.preferred_role
    fill_in "Project title", with: @actor_applicant_form.project_title
    fill_in "User", with: @actor_applicant_form.user_id
    click_on "Create Actor applicant form"

    assert_text "Actor applicant form was successfully created"
    click_on "Back"
  end

  test "should update Actor applicant form" do
    visit actor_applicant_form_url(@actor_applicant_form)
    click_on "Edit this actor applicant form", match: :first

    fill_in "Audition tape", with: @actor_applicant_form.audition_tape
    fill_in "Availability", with: @actor_applicant_form.availability
    fill_in "Interest reason", with: @actor_applicant_form.interest_reason
    fill_in "Preferred role", with: @actor_applicant_form.preferred_role
    fill_in "Project title", with: @actor_applicant_form.project_title
    fill_in "User", with: @actor_applicant_form.user_id
    click_on "Update Actor applicant form"

    assert_text "Actor applicant form was successfully updated"
    click_on "Back"
  end

  test "should destroy Actor applicant form" do
    visit actor_applicant_form_url(@actor_applicant_form)
    click_on "Destroy this actor applicant form", match: :first

    assert_text "Actor applicant form was successfully destroyed"
  end
end
