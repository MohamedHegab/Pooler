require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, request: { Age: @request.Age, Location_Destination: @request.Location_Destination, Location_From: @request.Location_From, Name: @request.Name, Notes: @request.Notes, Telephone: @request.Telephone, Travel_date: @request.Travel_date, prefered_time_from: @request.prefered_time_from, prefered_time_to: @request.prefered_time_to }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, id: @request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request
    assert_response :success
  end

  test "should update request" do
    patch :update, id: @request, request: { Age: @request.Age, Location_Destination: @request.Location_Destination, Location_From: @request.Location_From, Name: @request.Name, Notes: @request.Notes, Telephone: @request.Telephone, Travel_date: @request.Travel_date, prefered_time_from: @request.prefered_time_from, prefered_time_to: @request.prefered_time_to }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, id: @request
    end

    assert_redirected_to requests_path
  end
end
