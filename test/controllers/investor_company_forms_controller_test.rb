require "test_helper"

class InvestorCompanyFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investor_company_form = investor_company_forms(:one)
  end

  test "should get index" do
    get investor_company_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_investor_company_form_url
    assert_response :success
  end

  test "should create investor_company_form" do
    assert_difference("InvestorCompanyForm.count") do
      post investor_company_forms_url, params: { investor_company_form: { availability: @investor_company_form.availability, company_address: @investor_company_form.company_address, company_name: @investor_company_form.company_name, company_website_link: @investor_company_form.company_website_link, interest_reason: @investor_company_form.interest_reason } }
    end

    assert_redirected_to investor_company_form_url(InvestorCompanyForm.last)
  end

  test "should show investor_company_form" do
    get investor_company_form_url(@investor_company_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_investor_company_form_url(@investor_company_form)
    assert_response :success
  end

  test "should update investor_company_form" do
    patch investor_company_form_url(@investor_company_form), params: { investor_company_form: { availability: @investor_company_form.availability, company_address: @investor_company_form.company_address, company_name: @investor_company_form.company_name, company_website_link: @investor_company_form.company_website_link, interest_reason: @investor_company_form.interest_reason } }
    assert_redirected_to investor_company_form_url(@investor_company_form)
  end

  test "should destroy investor_company_form" do
    assert_difference("InvestorCompanyForm.count", -1) do
      delete investor_company_form_url(@investor_company_form)
    end

    assert_redirected_to investor_company_forms_url
  end
end
