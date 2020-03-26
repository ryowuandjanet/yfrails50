require 'test_helper'

class YfcasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yfcase = yfcases(:one)
  end

  test "should get index" do
    get yfcases_url
    assert_response :success
  end

  test "should get new" do
    get new_yfcase_url
    assert_response :success
  end

  test "should create yfcase" do
    assert_difference('Yfcase.count') do
      post yfcases_url, params: { yfcase: { case_number: @yfcase.case_number } }
    end

    assert_redirected_to yfcase_url(Yfcase.last)
  end

  test "should show yfcase" do
    get yfcase_url(@yfcase)
    assert_response :success
  end

  test "should get edit" do
    get edit_yfcase_url(@yfcase)
    assert_response :success
  end

  test "should update yfcase" do
    patch yfcase_url(@yfcase), params: { yfcase: { case_number: @yfcase.case_number } }
    assert_redirected_to yfcase_url(@yfcase)
  end

  test "should destroy yfcase" do
    assert_difference('Yfcase.count', -1) do
      delete yfcase_url(@yfcase)
    end

    assert_redirected_to yfcases_url
  end
end
