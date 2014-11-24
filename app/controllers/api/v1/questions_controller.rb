class Api::V1::QuestionsController < ApplicationController
  # GET /api/v1/questions
  # GET /api/v1/questions.json
  def index
    @api_v1_questions = Api::V1::Question.all

    render json: @api_v1_questions
  end

  # GET /api/v1/questions/1
  # GET /api/v1/questions/1.json
  def show
    @api_v1_question = Api::V1::Question.find(params[:id])

    render json: @api_v1_question
  end

  # POST /api/v1/questions
  # POST /api/v1/questions.json
  def create
    @api_v1_question = Api::V1::Question.new(api_v1_question_params)
    @api_v1_question.response = Api::V1::Response.offset(rand Api::V1::Response.count).first

    if @api_v1_question.save
      render json: @api_v1_question, status: :created, location: @api_v1_question
    else
      render json: @api_v1_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/questions/1
  # PATCH/PUT /api/v1/questions/1.json
  def update
    @api_v1_question = Api::V1::Question.find(params[:id])

    if @api_v1_question.update(api_v1_question_params)
      head :no_content
    else
      render json: @api_v1_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/questions/1
  # DELETE /api/v1/questions/1.json
  def destroy
    @api_v1_question = Api::V1::Question.find(params[:id])
    @api_v1_question.destroy

    head :no_content
  end

  private
    
    def api_v1_question_params
      params.require(:question).permit(:text, :user_id)
    end
end
