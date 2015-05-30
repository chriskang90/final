class PerformancesController < ApplicationController

  before_action :require_user

  def require_user
    if session[:user_id].blank?
      redirect_to '/login', notice: "Please login."
    end
  end

  def create
  	@performance = Performance.new
  	@performance.festival_id = params[:festival_id]
  	@performance.artist_id = params[:artist_id]
    @performance.save

  	# Performances are added from the artist show view
    redirect_to artist_url(params[:artist_id])
  end

  def destroy
    Performance.delete(params[:id])

    # Performances are removed from the artist show view
    redirect_to artists_url
  end

end