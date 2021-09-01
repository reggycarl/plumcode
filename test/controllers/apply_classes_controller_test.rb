require 'test_helper'

class ApplyClassesControllerTest < ActionController::TestCase
  setup do
    @apply_class = apply_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apply_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apply_class" do
    assert_difference('ApplyClass.count') do
      post :create, apply_class: { reason: @apply_class.reason, skill_level: @apply_class.skill_level, user_id: @apply_class.user_id }
    end

    assert_redirected_to apply_class_path(assigns(:apply_class))
  end

  test "should show apply_class" do
    get :show, id: @apply_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apply_class
    assert_response :success
  end

  test "should update apply_class" do
    patch :update, id: @apply_class, apply_class: { reason: @apply_class.reason, skill_level: @apply_class.skill_level, user_id: @apply_class.user_id }
    assert_redirected_to apply_class_path(assigns(:apply_class))
  end

  test "should destroy apply_class" do
    assert_difference('ApplyClass.count', -1) do
      delete :destroy, id: @apply_class
    end

    assert_redirected_to apply_classes_path
  end
end
