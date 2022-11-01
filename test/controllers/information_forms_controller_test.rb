require "test_helper"

class InformationFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @information_form = information_forms(:one)
  end

  test "should get index" do
    get information_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_information_form_url
    assert_response :success
  end

  test "should create information_form" do
    assert_difference("InformationForm.count") do
      post information_forms_url, params: { information_form: { age: @information_form.age, bio: @information_form.bio, city: @information_form.city, first_name: @information_form.first_name, introduction: @information_form.introduction, last_name: @information_form.last_name, nation: @information_form.nation, phone_number: @information_form.phone_number, social_media: @information_form.social_media, user_id: @information_form.user_id } }
    end

    assert_redirected_to information_form_url(InformationForm.last)
  end

  test "should show information_form" do
    get information_form_url(@information_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_information_form_url(@information_form)
    assert_response :success
  end

  test "should update information_form" do
    patch information_form_url(@information_form), params: { information_form: { age: @information_form.age, bio: @information_form.bio, city: @information_form.city, first_name: @information_form.first_name, introduction: @information_form.introduction, last_name: @information_form.last_name, nation: @information_form.nation, phone_number: @information_form.phone_number, social_media: @information_form.social_media, user_id: @information_form.user_id } }
    assert_redirected_to information_form_url(@information_form)
  end

  test "should destroy information_form" do
    assert_difference("InformationForm.count", -1) do
      delete information_form_url(@information_form)
    end

    assert_redirected_to information_forms_url
  end
end
