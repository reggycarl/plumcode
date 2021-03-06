require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('Users.count') do
      post :create, user: { first_name: @user.first_name, gender: @user.gender, last_name: @user.last_name, mobile_number: @user.mobile_number }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { first_name: @user.first_name, gender: @user.gender, last_name: @user.last_name, mobile_number: @user.mobile_number }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('Users.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_index_path
  end
end
