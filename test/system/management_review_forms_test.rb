require "application_system_test_case"

class ManagementReviewFormsTest < ApplicationSystemTestCase
  setup do
    @management_review_form = management_review_forms(:one)
  end

  test "visiting the index" do
    visit management_review_forms_url
    assert_selector "h1", text: "Management review forms"
  end

  test "should create management review form" do
    visit management_review_forms_url
    click_on "New management review form"

    fill_in "Outcome recommendation", with: @management_review_form.outcome_recommendation
    fill_in "People involved", with: @management_review_form.people_involved
    fill_in "Project involved", with: @management_review_form.project_involved
    fill_in "Review purpose", with: @management_review_form.review_purpose
    fill_in "Review title", with: @management_review_form.review_title
    click_on "Create Management review form"

    assert_text "Management review form was successfully created"
    click_on "Back"
  end

  test "should update Management review form" do
    visit management_review_form_url(@management_review_form)
    click_on "Edit this management review form", match: :first

    fill_in "Outcome recommendation", with: @management_review_form.outcome_recommendation
    fill_in "People involved", with: @management_review_form.people_involved
    fill_in "Project involved", with: @management_review_form.project_involved
    fill_in "Review purpose", with: @management_review_form.review_purpose
    fill_in "Review title", with: @management_review_form.review_title
    click_on "Update Management review form"

    assert_text "Management review form was successfully updated"
    click_on "Back"
  end

  test "should destroy Management review form" do
    visit management_review_form_url(@management_review_form)
    click_on "Destroy this management review form", match: :first

    assert_text "Management review form was successfully destroyed"
  end
end
