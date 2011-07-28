require 'test_helper'

class NicksControllerTest < ActionController::TestCase
  setup do
    @nick = nicks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nicks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nick" do
    assert_difference('Nick.count') do
      post :create, :nick => @nick.attributes
    end

    assert_redirected_to nick_path(assigns(:nick))
  end

  test "should show nick" do
    get :show, :id => @nick.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nick.to_param
    assert_response :success
  end

  test "should update nick" do
    put :update, :id => @nick.to_param, :nick => @nick.attributes
    assert_redirected_to nick_path(assigns(:nick))
  end

  test "should destroy nick" do
    assert_difference('Nick.count', -1) do
      delete :destroy, :id => @nick.to_param
    end

    assert_redirected_to nicks_path
  end
end
