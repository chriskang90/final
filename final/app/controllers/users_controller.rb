class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.password = params[:password]

    if @user.save
      redirect_to root_url, notice: "Congratulations on signing up!  Please sign in with your new account."
    else
      render "new"
    end
  end

end