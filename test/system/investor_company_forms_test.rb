require "application_system_test_case"

class InvestorCompanyFormsTest < ApplicationSystemTestCase
  setup do
    @investor_company_form = investor_company_forms(:one)
  end

  test "visiting the index" do
    visit investor_company_forms_url
    assert_selector "h1", text: "Investor company forms"
  end

  test "should create investor company form" do
    visit investor_company_forms_url
    click_on "New investor company form"

    fill_in "Availability", with: @investor_company_form.availability
    fill_in "Company address", with: @investor_company_form.company_address
    fill_in "Company name", with: @investor_company_form.company_name
    fill_in "Company website link", with: @investor_company_form.company_website_link
    fill_in "Interest reason", with: @investor_company_form.interest_reason
    click_on "Create Investor company form"

    assert_text "Investor company form was successfully created"
    click_on "Back"
  end

  test "should update Investor company form" do
    visit investor_company_form_url(@investor_company_form)
    click_on "Edit this investor company form", match: :first

    fill_in "Availability", with: @investor_company_form.availability
    fill_in "Company address", with: @investor_company_form.company_address
    fill_in "Company name", with: @investor_company_form.company_name
    fill_in "Company website link", with: @investor_company_form.company_website_link
    fill_in "Interest reason", with: @investor_company_form.interest_reason
    click_on "Update Investor company form"

    assert_text "Investor company form was successfully updated"
    click_on "Back"
  end

  test "should destroy Investor company form" do
    visit investor_company_form_url(@investor_company_form)
    click_on "Destroy this investor company form", match: :first

    assert_text "Investor company form was successfully destroyed"
  end
end
