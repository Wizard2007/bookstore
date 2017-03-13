require 'test_helper'

class UserPhonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_phone = user_phones(:one)
  end

  test "should get index" do
    get user_phones_url
    assert_response :success
  end

  test "should get new" do
    get new_user_phone_url
    assert_response :success
  end

  test "should create user_phone" do
    assert_difference('UserPhone.count') do
      post user_phones_url, params: { user_phone: {  } }
    end

    assert_redirected_to user_phone_url(UserPhone.last)
  end

  test "should show user_phone" do
    get user_phone_url(@user_phone)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_phone_url(@user_phone)
    assert_response :success
  end

  test "should update user_phone" do
    patch user_phone_url(@user_phone), params: { user_phone: {  } }
    assert_redirected_to user_phone_url(@user_phone)
  end

  test "should destroy user_phone" do
    assert_difference('UserPhone.count', -1) do
      delete user_phone_url(@user_phone)
    end

    assert_redirected_to user_phones_url
  end
end
