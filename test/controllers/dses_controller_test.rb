require 'test_helper'

class DsesControllerTest < ActionController::TestCase
  setup do
    @dse = dses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dse" do
    assert_difference('Dse.count') do
      post :create, dse: { name: @dse.name }
    end

    assert_redirected_to dse_path(assigns(:dse))
  end

  test "should show dse" do
    get :show, id: @dse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dse
    assert_response :success
  end

  test "should update dse" do
    patch :update, id: @dse, dse: { name: @dse.name }
    assert_redirected_to dse_path(assigns(:dse))
  end

  test "should destroy dse" do
    assert_difference('Dse.count', -1) do
      delete :destroy, id: @dse
    end

    assert_redirected_to dses_path
  end
end
