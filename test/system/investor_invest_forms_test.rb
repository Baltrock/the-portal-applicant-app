require "application_system_test_case"

class InvestorInvestFormsTest < ApplicationSystemTestCase
  setup do
    @investor_invest_form = investor_invest_forms(:one)
  end

  test "visiting the index" do
    visit investor_invest_forms_url
    assert_selector "h1", text: "Investor invest forms"
  end

  test "should create investor invest form" do
    visit investor_invest_forms_url
    click_on "New investor invest form"

    fill_in "Availability", with: @investor_invest_form.availability
    fill_in "Currency", with: @investor_invest_form.currency
    fill_in "General or key", with: @investor_invest_form.general_or_key
    fill_in "Interest reason", with: @investor_invest_form.interest_reason
    fill_in "Investment amount", with: @investor_invest_form.investment_amount
    fill_in "Investment history", with: @investor_invest_form.investment_history
    click_on "Create Investor invest form"

    assert_text "Investor invest form was successfully created"
    click_on "Back"
  end

  test "should update Investor invest form" do
    visit investor_invest_form_url(@investor_invest_form)
    click_on "Edit this investor invest form", match: :first

    fill_in "Availability", with: @investor_invest_form.availability
    fill_in "Currency", with: @investor_invest_form.currency
    fill_in "General or key", with: @investor_invest_form.general_or_key
    fill_in "Interest reason", with: @investor_invest_form.interest_reason
    fill_in "Investment amount", with: @investor_invest_form.investment_amount
    fill_in "Investment history", with: @investor_invest_form.investment_history
    click_on "Update Investor invest form"

    assert_text "Investor invest form was successfully updated"
    click_on "Back"
  end

  test "should destroy Investor invest form" do
    visit investor_invest_form_url(@investor_invest_form)
    click_on "Destroy this investor invest form", match: :first

    assert_text "Investor invest form was successfully destroyed"
  end
end
