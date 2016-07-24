class SessionsController < ApplicationController

  def new
     @user = User.new
   end

  def create
    if @user = login(params[:email], params[:password])
       redirect_back_or_to(root_path, alert: 'Login successful')
    else
       flash.now[:alert] = 'Login failed'
       render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(root_path, alert: 'Logged out!')
  end

end

# for later
# skip_before_action :require_login, only: [:new, :create]
#
# def new
# end
#
# def create
#   user = User.find_by(email: params[:email])
#
#   if user
#     session[:user_id] = user.id
#     redirect_to restaurants_url, notice: "Logged in!"
#   else
#     flash.now[:alert] = "Invalid email or password"
#     render "new"
#   end
#
#
#   # if user && user.authenticate(params[:password])
#   #   session[:user_id] = user.id
#   #   redirect_to products_url, notice: "Logged in!"
#   # else
#   #   flash.now[:alert] = "Invalid email or password"
#   #   render "new"
#   # end
# end
#
# def destroy
#   session[:user_id] = nil
#   redirect_to restaurants_url, notice: "Logged out!"
# end
