require 'test_helper'

class BedrijfsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bedrijfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bedrijf" do
    assert_difference('Bedrijf.count') do
      post :create, :bedrijf => { }
    end

    assert_redirected_to bedrijf_path(assigns(:bedrijf))
  end

  test "should show bedrijf" do
    get :show, :id => bedrijfs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => bedrijfs(:one).to_param
    assert_response :success
  end

  test "should update bedrijf" do
    put :update, :id => bedrijfs(:one).to_param, :bedrijf => { }
    assert_redirected_to bedrijf_path(assigns(:bedrijf))
  end

  test "should destroy bedrijf" do
    assert_difference('Bedrijf.count', -1) do
      delete :destroy, :id => bedrijfs(:one).to_param
    end

    assert_redirected_to bedrijfs_path
  end
end
