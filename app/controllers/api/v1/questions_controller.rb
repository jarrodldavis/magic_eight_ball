class Api::V1::QuestionsController < ApplicationController
  load_and_authorize_resource class: Api::V1::Question

  # GET /api/v1/questions
  # GET /api/v1/questions.json
  def index
    render json: @questions
  end

  # GET /api/v1/questions/1
  # GET /api/v1/questions/1.json
  def show
    render json: @question
  end

  # POST /api/v1/questions
  # POST /api/v1/questions.json
  def create
    if Api::V1::Response.count < 1
      @question.errors.add :response, 'insufficient number of responses'
      render json: @question.errors, status: :internal_server_error
    else
      @question.response = Api::V1::Response.offset(rand Api::V1::Response.count).first

      if @question.save
        render json: @question, status: :created, location: @question
      else
        render json: @question.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /api/v1/questions/1
  # PATCH/PUT /api/v1/questions/1.json
  def update
    if @question.update(question_params)
      head :no_content
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/questions/1
  # DELETE /api/v1/questions/1.json
  def destroy
    @question.destroy

    head :no_content
  end

  private
    
    def question_params
      params.require(:question).permit(:text, :user_id)
    end
end
