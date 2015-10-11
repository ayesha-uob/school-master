require 'test_helper'

class ClasssesControllerTest < ActionController::TestCase
  setup do
    @classs = classses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classs" do
    assert_difference('Classs.count') do
      post :create, classs: { class_name: @classs.class_name, room_no: @classs.room_no, section: @classs.section }
    end

    assert_redirected_to classs_path(assigns(:classs))
  end

  test "should show classs" do
    get :show, id: @classs
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classs
    assert_response :success
  end

  test "should update classs" do
    patch :update, id: @classs, classs: { class_name: @classs.class_name, room_no: @classs.room_no, section: @classs.section }
    assert_redirected_to classs_path(assigns(:classs))
  end

  test "should destroy classs" do
    assert_difference('Classs.count', -1) do
      delete :destroy, id: @classs
    end

    assert_redirected_to classses_path
  end
end
