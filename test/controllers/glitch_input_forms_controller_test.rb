require "test_helper"

class GlitchInputFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glitch_input_form = glitch_input_forms(:one)
  end

  test "should get index" do
    get glitch_input_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_glitch_input_form_url
    assert_response :success
  end

  test "should create glitch_input_form" do
    assert_difference("GlitchInputForm.count") do
      post glitch_input_forms_url, params: { glitch_input_form: { glitch_message: @glitch_input_form.glitch_message, glitch_title: @glitch_input_form.glitch_title, riddle_hint: @glitch_input_form.riddle_hint, spoiler_hint: @glitch_input_form.spoiler_hint } }
    end

    assert_redirected_to glitch_input_form_url(GlitchInputForm.last)
  end

  test "should show glitch_input_form" do
    get glitch_input_form_url(@glitch_input_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_glitch_input_form_url(@glitch_input_form)
    assert_response :success
  end

  test "should update glitch_input_form" do
    patch glitch_input_form_url(@glitch_input_form), params: { glitch_input_form: { glitch_message: @glitch_input_form.glitch_message, glitch_title: @glitch_input_form.glitch_title, riddle_hint: @glitch_input_form.riddle_hint, spoiler_hint: @glitch_input_form.spoiler_hint } }
    assert_redirected_to glitch_input_form_url(@glitch_input_form)
  end

  test "should destroy glitch_input_form" do
    assert_difference("GlitchInputForm.count", -1) do
      delete glitch_input_form_url(@glitch_input_form)
    end

    assert_redirected_to glitch_input_forms_url
  end
end
