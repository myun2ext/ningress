require 'test_helper'

class PortalsControllerTest < ActionController::TestCase
  setup do
    @portal = portals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portal" do
    assert_difference('Portal.count') do
      post :create, portal: { latitude: @portal.latitude, longitude: @portal.longitude, name: @portal.name }
    end

    assert_redirected_to portal_path(assigns(:portal))
  end

  test "should show portal" do
    get :show, id: @portal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portal
    assert_response :success
  end

  test "should update portal" do
    patch :update, id: @portal, portal: { latitude: @portal.latitude, longitude: @portal.longitude, name: @portal.name }
    assert_redirected_to portal_path(assigns(:portal))
  end

  test "should destroy portal" do
    assert_difference('Portal.count', -1) do
      delete :destroy, id: @portal
    end

    assert_redirected_to portals_path
  end
end
