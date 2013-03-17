require 'test_helper'

class UserSpecialtiesControllerTest < ActionController::TestCase
  setup do
    @user_specialty = user_specialties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_specialties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_specialty" do
    assert_difference('UserSpecialty.count') do
      post :create, user_specialty: { specialty_id: @user_specialty.specialty_id, user_id: @user_specialty.user_id, user_specialty_name: @user_specialty.user_specialty_name }
    end

    assert_redirected_to user_specialty_path(assigns(:user_specialty))
  end

  test "should show user_specialty" do
    get :show, id: @user_specialty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_specialty
    assert_response :success
  end

  test "should update user_specialty" do
    put :update, id: @user_specialty, user_specialty: { specialty_id: @user_specialty.specialty_id, user_id: @user_specialty.user_id, user_specialty_name: @user_specialty.user_specialty_name }
    assert_redirected_to user_specialty_path(assigns(:user_specialty))
  end

  test "should destroy user_specialty" do
    assert_difference('UserSpecialty.count', -1) do
      delete :destroy, id: @user_specialty
    end

    assert_redirected_to user_specialties_path
  end
end
