require "test_helper"

class InvestorInvestFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investor_invest_form = investor_invest_forms(:one)
  end

  test "should get index" do
    get investor_invest_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_investor_invest_form_url
    assert_response :success
  end

  test "should create investor_invest_form" do
    assert_difference("InvestorInvestForm.count") do
      post investor_invest_forms_url, params: { investor_invest_form: { availability: @investor_invest_form.availability, currency: @investor_invest_form.currency, general_or_key: @investor_invest_form.general_or_key, interest_reason: @investor_invest_form.interest_reason, investment_amount: @investor_invest_form.investment_amount, investment_history: @investor_invest_form.investment_history } }
    end

    assert_redirected_to investor_invest_form_url(InvestorInvestForm.last)
  end

  test "should show investor_invest_form" do
    get investor_invest_form_url(@investor_invest_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_investor_invest_form_url(@investor_invest_form)
    assert_response :success
  end

  test "should update investor_invest_form" do
    patch investor_invest_form_url(@investor_invest_form), params: { investor_invest_form: { availability: @investor_invest_form.availability, currency: @investor_invest_form.currency, general_or_key: @investor_invest_form.general_or_key, interest_reason: @investor_invest_form.interest_reason, investment_amount: @investor_invest_form.investment_amount, investment_history: @investor_invest_form.investment_history } }
    assert_redirected_to investor_invest_form_url(@investor_invest_form)
  end

  test "should destroy investor_invest_form" do
    assert_difference("InvestorInvestForm.count", -1) do
      delete investor_invest_form_url(@investor_invest_form)
    end

    assert_redirected_to investor_invest_forms_url
  end
end
