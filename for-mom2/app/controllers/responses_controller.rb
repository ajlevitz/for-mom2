class ResponsesController < ApplicationController
  def new
    @response = Response.new
  end

  def create
    @response = Response.new(response_params)
    @response.save

    redirect_to '/schools/'+@response.school_id.to_s+'/prompts/'+@response.prompt_id.to_s
  end

  def show
    @response = Response.find(params[:id])
  end

  def destroy
    @response = Response.find(params[:id])
    @response.destroy

    redirect_to responses_path
  end

private
  def response_params
    params.required(:response).permit(:submitter, :comments, :prompt_id, :school_id)
  end
end
