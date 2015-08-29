require 'test_helper'

class CarPoolingRequesstsControllerTest < ActionController::TestCase
  setup do
    @car_pooling_requesst = car_pooling_requessts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_pooling_requessts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_pooling_requesst" do
    assert_difference('CarPoolingRequesst.count') do
      post :create, car_pooling_requesst: { email: @car_pooling_requesst.email, password: @car_pooling_requesst.password, prefer_from: @car_pooling_requesst.prefer_from, prefer_to: @car_pooling_requesst.prefer_to, travel_id: @car_pooling_requesst.travel_id, user_id: @car_pooling_requesst.user_id }
    end

    assert_redirected_to car_pooling_requesst_path(assigns(:car_pooling_requesst))
  end

  test "should show car_pooling_requesst" do
    get :show, id: @car_pooling_requesst
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_pooling_requesst
    assert_response :success
  end

  test "should update car_pooling_requesst" do
    patch :update, id: @car_pooling_requesst, car_pooling_requesst: { email: @car_pooling_requesst.email, password: @car_pooling_requesst.password, prefer_from: @car_pooling_requesst.prefer_from, prefer_to: @car_pooling_requesst.prefer_to, travel_id: @car_pooling_requesst.travel_id, user_id: @car_pooling_requesst.user_id }
    assert_redirected_to car_pooling_requesst_path(assigns(:car_pooling_requesst))
  end

  test "should destroy car_pooling_requesst" do
    assert_difference('CarPoolingRequesst.count', -1) do
      delete :destroy, id: @car_pooling_requesst
    end

    assert_redirected_to car_pooling_requessts_path
  end
end
