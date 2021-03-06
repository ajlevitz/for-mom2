class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new(school_params)
    @school.save
    
    redirect_to school_path(@school)
  end

  def show
    @school = School.find(params[:id])
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy

    redirect_to schools_path
  end  

private
  def school_params
    params.required(:school).permit(:name, :id)
  end
end
