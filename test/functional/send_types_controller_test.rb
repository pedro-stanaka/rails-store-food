require 'test_helper'

class SendTypesControllerTest < ActionController::TestCase
  setup do
    @send_type = send_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:send_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create send_type" do
    assert_difference('SendType.count') do
      post :create, send_type: { name: @send_type.name }
    end

    assert_redirected_to send_type_path(assigns(:send_type))
  end

  test "should show send_type" do
    get :show, id: @send_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @send_type
    assert_response :success
  end

  test "should update send_type" do
    put :update, id: @send_type, send_type: { name: @send_type.name }
    assert_redirected_to send_type_path(assigns(:send_type))
  end

  test "should destroy send_type" do
    assert_difference('SendType.count', -1) do
      delete :destroy, id: @send_type
    end

    assert_redirected_to send_types_path
  end
end
