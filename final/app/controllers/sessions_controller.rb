class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    # For security: Do not inform the user whether the problem was with the email or password
    if user.nil?
      redirect_to '/login', notice: "Unknown email or password."
    else
      if user.authenticate(params[:password])
        session["user_id"] = user.id
        redirect_to root_url, notice: "Welcome back " + user.name
      else
        redirect_to '/login', notice: "Unknown email or password."
      end
    end
  end

  def destroy
    session.delete("user_id")
    cookies.delete("festival_ids")  # Clear the browsing history as well
    redirect_to root_url, notice: "Successfully signed out"
  end

end