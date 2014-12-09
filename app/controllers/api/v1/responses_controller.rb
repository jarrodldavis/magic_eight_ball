class Api::V1::ResponsesController < ApplicationController
  load_and_authorize_resource class: Api::V1::Response

  # GET /api/v1/responses
  # GET /api/v1/responses.json
  def index
    render json: @responses
  end

  # GET /api/v1/responses/1
  # GET /api/v1/responses/1.json
  def show
    render json: @response
  end

  # POST /api/v1/responses
  # POST /api/v1/responses.json
  def create
    @response.default = false

    if @response.save
      render json: @response, status: :created, location: @response
    else
      render json: @response.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/responses/1
  # PATCH/PUT /api/v1/responses/1.json
  def update
    @response.default = false

    if @response.update(response_params)
      head :no_content
    else
      render json: @response.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/responses/1
  # DELETE /api/v1/responses/1.json
  def destroy
    @response.destroy

    head :no_content
  end

  private
    
    def response_params
      params.require(:response).permit(:text, :default)
    end
end
