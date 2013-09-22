class ResponsesController < ApplicationController
  def new
    @response = Response.new
  end

  def create
    # # @school = School.find(params[:id])
    @school_id = @school_id

    # # @prompt = Prompt.find(params[:id])
    @prompt_id = @prompt_id

    @response = Response.new(response_params)
    @response.save

    redirect_to '/schools/'+@response.school_id.to_s+'/prompts/'+@response.prompt_id.to_s

    # render text: params[:response].inspect
  end

  def show
    @response = Response.find(params[:id])
  end

private
  def response_params
    params.required(:response).permit(:submitter, :comments, :prompt_id, :school_id)
  end
end
