require 'test_helper'

class PostSpecialtiesControllerTest < ActionController::TestCase
  setup do
    @post_specialty = post_specialties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_specialties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_specialty" do
    assert_difference('PostSpecialty.count') do
      post :create, post_specialty: { post_id: @post_specialty.post_id, post_specialty_name: @post_specialty.post_specialty_name, specialty_id: @post_specialty.specialty_id }
    end

    assert_redirected_to post_specialty_path(assigns(:post_specialty))
  end

  test "should show post_specialty" do
    get :show, id: @post_specialty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_specialty
    assert_response :success
  end

  test "should update post_specialty" do
    put :update, id: @post_specialty, post_specialty: { post_id: @post_specialty.post_id, post_specialty_name: @post_specialty.post_specialty_name, specialty_id: @post_specialty.specialty_id }
    assert_redirected_to post_specialty_path(assigns(:post_specialty))
  end

  test "should destroy post_specialty" do
    assert_difference('PostSpecialty.count', -1) do
      delete :destroy, id: @post_specialty
    end

    assert_redirected_to post_specialties_path
  end
end
