require 'test_helper'

class Api::V1::QuestionsControllerTest < ActionController::TestCase
  setup do
    @api_v1_question = api_v1_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_questions)
  end

  test "should create api_v1_question" do
    assert_difference('Api::V1::Question.count') do
      post :create, api_v1_question: { response_id: @api_v1_question.response_id, text: @api_v1_question.text, user_id: @api_v1_question.user_id }
    end

    assert_response 201
  end

  test "should show api_v1_question" do
    get :show, id: @api_v1_question
    assert_response :success
  end

  test "should update api_v1_question" do
    put :update, id: @api_v1_question, api_v1_question: { response_id: @api_v1_question.response_id, text: @api_v1_question.text, user_id: @api_v1_question.user_id }
    assert_response 204
  end

  test "should destroy api_v1_question" do
    assert_difference('Api::V1::Question.count', -1) do
      delete :destroy, id: @api_v1_question
    end

    assert_response 204
  end
end
