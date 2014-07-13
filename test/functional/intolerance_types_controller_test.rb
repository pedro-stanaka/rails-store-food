require 'test_helper'

class IntoleranceTypesControllerTest < ActionController::TestCase
  setup do
    @intolerance_type = intolerance_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intolerance_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intolerance_type" do
    assert_difference('IntoleranceType.count') do
      post :create, intolerance_type: { description: @intolerance_type.description, name: @intolerance_type.name }
    end

    assert_redirected_to intolerance_type_path(assigns(:intolerance_type))
  end

  test "should show intolerance_type" do
    get :show, id: @intolerance_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intolerance_type
    assert_response :success
  end

  test "should update intolerance_type" do
    put :update, id: @intolerance_type, intolerance_type: { description: @intolerance_type.description, name: @intolerance_type.name }
    assert_redirected_to intolerance_type_path(assigns(:intolerance_type))
  end

  test "should destroy intolerance_type" do
    assert_difference('IntoleranceType.count', -1) do
      delete :destroy, id: @intolerance_type
    end

    assert_redirected_to intolerance_types_path
  end
end
