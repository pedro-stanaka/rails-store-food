require 'test_helper'

class AllergyTypesControllerTest < ActionController::TestCase
  setup do
    @allergy_type = allergy_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allergy_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allergy_type" do
    assert_difference('AllergyType.count') do
      post :create, allergy_type: { description: @allergy_type.description, name: @allergy_type.name }
    end

    assert_redirected_to allergy_type_path(assigns(:allergy_type))
  end

  test "should show allergy_type" do
    get :show, id: @allergy_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allergy_type
    assert_response :success
  end

  test "should update allergy_type" do
    put :update, id: @allergy_type, allergy_type: { description: @allergy_type.description, name: @allergy_type.name }
    assert_redirected_to allergy_type_path(assigns(:allergy_type))
  end

  test "should destroy allergy_type" do
    assert_difference('AllergyType.count', -1) do
      delete :destroy, id: @allergy_type
    end

    assert_redirected_to allergy_types_path
  end
end
