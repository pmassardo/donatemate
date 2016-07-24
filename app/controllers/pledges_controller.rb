class PledgesController < ApplicationController
  def index
  end

  def new
    @project = Project.find(params[:project_id])
    if @project.user == current_user
      redirect_to project_path(@project), alert: "Sorry mate, cannot Pledge on your own Project"
    else
      @pledge = Pledge.new
    end
  end

  def update
  end

  def destroy
  end

  def create
      @pledge = Pledge.new(pledge_params)
      @pledge.user = current_user
      @pledge.project_id = params[:project_id]
      @pledge.reward = Reward.first
      if @pledge.save
        redirect_to root_path, alert: "You've pledged $#{@pledge.amount} to #{Project.find_by_id(@pledge.project_id).title}"
      else
        render :new
      end
  end


  def edit
  end

  def show
  end

  private

  def pledge_params
    params.require(:pledge).permit(:amount, :processed, :authorization, :card_number, :project_id, :reward_id, :user_id)
  end
end
