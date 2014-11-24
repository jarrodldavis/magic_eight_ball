require 'test_helper'

class Api::V1::ResponsesControllerTest < ActionController::TestCase
  setup do
    @api_v1_response = api_v1_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_responses)
  end

  test "should create api_v1_response" do
    assert_difference('Api::V1::Response.count') do
      post :create, api_v1_response: { default: @api_v1_response.default, text: @api_v1_response.text }
    end

    assert_response 201
  end

  test "should show api_v1_response" do
    get :show, id: @api_v1_response
    assert_response :success
  end

  test "should update api_v1_response" do
    put :update, id: @api_v1_response, api_v1_response: { default: @api_v1_response.default, text: @api_v1_response.text }
    assert_response 204
  end

  test "should destroy api_v1_response" do
    assert_difference('Api::V1::Response.count', -1) do
      delete :destroy, id: @api_v1_response
    end

    assert_response 204
  end
end
