class Api::V1::ResponsesController < ApplicationController
  # GET /api/v1/responses
  # GET /api/v1/responses.json
  def index
    @api_v1_responses = Api::V1::Response.all

    render json: @api_v1_responses
  end

  # GET /api/v1/responses/1
  # GET /api/v1/responses/1.json
  def show
    @api_v1_response = Api::V1::Response.find(params[:id])

    render json: @api_v1_response
  end

  # POST /api/v1/responses
  # POST /api/v1/responses.json
  def create
    @api_v1_response = Api::V1::Response.new(api_v1_response_params)

    if @api_v1_response.save
      render json: @api_v1_response, status: :created, location: @api_v1_response
    else
      render json: @api_v1_response.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/responses/1
  # PATCH/PUT /api/v1/responses/1.json
  def update
    @api_v1_response = Api::V1::Response.find(params[:id])

    if @api_v1_response.update(api_v1_response_params)
      head :no_content
    else
      render json: @api_v1_response.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/responses/1
  # DELETE /api/v1/responses/1.json
  def destroy
    @api_v1_response = Api::V1::Response.find(params[:id])
    @api_v1_response.destroy

    head :no_content
  end

  private
    
    def api_v1_response_params
      params.require(:response).permit(:text, :default)
    end
end
