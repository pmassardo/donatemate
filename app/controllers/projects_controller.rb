class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    @project.rewards.build
  end

  def update

    @project = Project.find(params[:id])
    @project.user_id = current_user.id
    if @project.update_attributes(project_params())
      redirect_to projects_url(@project)
    else
      render  :edit
    end

  end

  def destroy
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    if @project.save
      redirect_to projects_path
    else
      render :new
    end

  end

  def edit
    @project = Project.find(params[:id])
  end

  def show
    @project = Project.find(params[:id])
    @rewards = @project.rewards

    if @rewards == nil
      @rewards = []
    end
  end



  private

  def project_params
    params.require(:project).permit(:goal,:user_id,:start_date,:end_date,:description, :category_id, :title, rewards_attributes: [:level, :name, :description, :project_id])
    #added rewards_attributes to let project accept reward form
  end

end
