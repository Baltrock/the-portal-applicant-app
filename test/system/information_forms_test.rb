require "application_system_test_case"

class InformationFormsTest < ApplicationSystemTestCase
  setup do
    @information_form = information_forms(:one)
  end

  test "visiting the index" do
    visit information_forms_url
    assert_selector "h1", text: "Information forms"
  end

  test "should create information form" do
    visit information_forms_url
    click_on "New information form"

    fill_in "Age", with: @information_form.age
    fill_in "Bio", with: @information_form.bio
    fill_in "City", with: @information_form.city
    fill_in "First name", with: @information_form.first_name
    fill_in "Introduction", with: @information_form.introduction
    fill_in "Last name", with: @information_form.last_name
    fill_in "Nation", with: @information_form.nation
    fill_in "Phone number", with: @information_form.phone_number
    fill_in "Social media", with: @information_form.social_media
    fill_in "User", with: @information_form.user_id
    click_on "Create Information form"

    assert_text "Information form was successfully created"
    click_on "Back"
  end

  test "should update Information form" do
    visit information_form_url(@information_form)
    click_on "Edit this information form", match: :first

    fill_in "Age", with: @information_form.age
    fill_in "Bio", with: @information_form.bio
    fill_in "City", with: @information_form.city
    fill_in "First name", with: @information_form.first_name
    fill_in "Introduction", with: @information_form.introduction
    fill_in "Last name", with: @information_form.last_name
    fill_in "Nation", with: @information_form.nation
    fill_in "Phone number", with: @information_form.phone_number
    fill_in "Social media", with: @information_form.social_media
    fill_in "User", with: @information_form.user_id
    click_on "Update Information form"

    assert_text "Information form was successfully updated"
    click_on "Back"
  end

  test "should destroy Information form" do
    visit information_form_url(@information_form)
    click_on "Destroy this information form", match: :first

    assert_text "Information form was successfully destroyed"
  end
end
