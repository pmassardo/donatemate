class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  def new
    @user = User.new
  end

  def update
    if @user.update_attributes(user_params)
      flash[:notice] = "Changes saved!"
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    flash[:notice] = "Boo!"
    redirect_to root_path
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thanks for signing up! You're now logged in."
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def show

# This isn't working!!!!
    @projects =[]
    @pledges = []

    if current_user
      @user = current_user
      @projects = Project.where(user_id: current_user.id)
      @pledges = Pledge.where(user_id: current_user.id)

    end
  end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:user_name, :first_name, :last_name, :email,
    :password, :password_confirmation, :expiry_year, :expiry_month, :card_number, :cvv)
  end

end
