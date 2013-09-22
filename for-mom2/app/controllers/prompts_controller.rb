class PromptsController < ApplicationController
  def create
    @school = School.find(params[:school_id])
    @prompt = @school.prompts.create(prompt_params)

    redirect_to school_path(@school)
  end

  def show
    @school = School.find(params[:school_id])
    @school_id = @school.id

    @prompt = @school.prompts.find(params[:id])
    @prompt_id = @prompt.id
  end

private
  def prompt_params
    params.required(:prompt).permit(:question, :id, :school_id)
  end
end
