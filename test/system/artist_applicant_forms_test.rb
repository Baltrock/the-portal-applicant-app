require "application_system_test_case"

class ArtistApplicantFormsTest < ApplicationSystemTestCase
  setup do
    @artist_applicant_form = artist_applicant_forms(:one)
  end

  test "visiting the index" do
    visit artist_applicant_forms_url
    assert_selector "h1", text: "Artist applicant forms"
  end

  test "should create artist applicant form" do
    visit artist_applicant_forms_url
    click_on "New artist applicant form"

    fill_in "Art form", with: @artist_applicant_form.art_form
    fill_in "Art style", with: @artist_applicant_form.art_style
    fill_in "Art submission", with: @artist_applicant_form.art_submission
    fill_in "Availability", with: @artist_applicant_form.availability
    fill_in "Interest reason", with: @artist_applicant_form.interest_reason
    fill_in "Project title", with: @artist_applicant_form.project_title
    fill_in "User", with: @artist_applicant_form.user_id
    click_on "Create Artist applicant form"

    assert_text "Artist applicant form was successfully created"
    click_on "Back"
  end

  test "should update Artist applicant form" do
    visit artist_applicant_form_url(@artist_applicant_form)
    click_on "Edit this artist applicant form", match: :first

    fill_in "Art form", with: @artist_applicant_form.art_form
    fill_in "Art style", with: @artist_applicant_form.art_style
    fill_in "Art submission", with: @artist_applicant_form.art_submission
    fill_in "Availability", with: @artist_applicant_form.availability
    fill_in "Interest reason", with: @artist_applicant_form.interest_reason
    fill_in "Project title", with: @artist_applicant_form.project_title
    fill_in "User", with: @artist_applicant_form.user_id
    click_on "Update Artist applicant form"

    assert_text "Artist applicant form was successfully updated"
    click_on "Back"
  end

  test "should destroy Artist applicant form" do
    visit artist_applicant_form_url(@artist_applicant_form)
    click_on "Destroy this artist applicant form", match: :first

    assert_text "Artist applicant form was successfully destroyed"
  end
end
