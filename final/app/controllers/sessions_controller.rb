class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.nil?
      redirect_to '/login', notice: "Unknown email."
    else
      if user.password == params[:password]
        cookies["user_id"] = user.id
        redirect_to root_url, notice: "Welcome back " + user.name
      else
        redirect_to '/login', notice: "Incorrect password."
      end
    end
  end

  def destroy
    cookies.delete("user_id")
    redirect_to root_url
  end

end