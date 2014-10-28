class ProjectsController < ApplicationController

  def index
  	@projects = Project.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end



  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @project }
    end
  end

  def new
  	@project = Project.new
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

private

  def project_params
    params.require(:project).permit(:name, :description, :queue)
  end


end
