class ProjectsController < ApplicationController

  before_action :set_project, only: [:show, :provision, :dismantle]

  def index
  	@projects = Project.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end



  def show
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


  def provision
    respond_to do |format|
      if @project.provision!
        format.html { redirect_to projects_path, notice: 'Project is provisioning servers' }
      else
        format.html { redirect_to projects_path, notice: 'Errors encountered while provisioning servers' }
      end
    end
  end


  def dismantle
    respond_to do |format|
      if @project.dismantle!
        format.html { redirect_to projects_path, notice: 'Project is dismantling servers' }
      else
        format.html { redirect_to projects_path, notice: 'Errors encountered while dismantling servers' }
      end
    end
  end

private

  def project_params
    params.require(:project).permit(:name, :description, :queue)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_project
    @project = Project.find(params[:id])
  end

end
