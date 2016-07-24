class RewardsController < ApplicationController

  def new
    @reward = Reward.new
    @project.rewards.build
  end

  def create
    @reward = Reward.new(reward_params)
  end

  def show
  end

  private
  def reward_params
    params.require(:project).permit(:goal, :user_id, :start_date, :end_date,
    :description, :title, rewards_attributes: [:level, :name, :description, :project_id])
  end
end
