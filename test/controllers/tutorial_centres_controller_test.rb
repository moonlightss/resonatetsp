require 'test_helper'

class TutorialCentresControllerTest < ActionController::TestCase
  setup do
    @tutorial_centre = tutorial_centres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutorial_centres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutorial_centre" do
    assert_difference('TutorialCentre.count') do
      post :create, tutorial_centre: { address: @tutorial_centre.address, name: @tutorial_centre.name, phone: @tutorial_centre.phone, website: @tutorial_centre.website }
    end

    assert_redirected_to tutorial_centre_path(assigns(:tutorial_centre))
  end

  test "should show tutorial_centre" do
    get :show, id: @tutorial_centre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tutorial_centre
    assert_response :success
  end

  test "should update tutorial_centre" do
    patch :update, id: @tutorial_centre, tutorial_centre: { address: @tutorial_centre.address, name: @tutorial_centre.name, phone: @tutorial_centre.phone, website: @tutorial_centre.website }
    assert_redirected_to tutorial_centre_path(assigns(:tutorial_centre))
  end

  test "should destroy tutorial_centre" do
    assert_difference('TutorialCentre.count', -1) do
      delete :destroy, id: @tutorial_centre
    end

    assert_redirected_to tutorial_centres_path
  end
end
