class ArtistsController < ApplicationController

  before_action :require_user, :except => [:index, :show]

  def require_user
    if session[:user_id].blank?
      redirect_to '/login', notice: "Please login."
    end
  end

  def index
    # per internally calls .limit
    @artists = Artist.page(params[:page]).per(10)
  end

  def show
    @artist = Artist.find_by(id: params["id"])

    # Festivals that artist belongs to: @artist.festivals
    @performing_festivals = @artist.festivals.page(params[:page]).per(10)

    # Festivals that artist is NOT performing in
    @not_performing_festivals = Festival.where.not(id: @artist.festival_ids).page(params[:page2]).per(10)

  	if @artist == nil
  		redirect_to artists_url, notice: "Artist not found"
  	end
  end

  def new
  end

  def create
    @artist = Artist.new
    @artist.name = params[:name]
    @artist.website = params[:website]

    if @artist.save
      redirect_to artists_url
    else 
      render 'new'
    end
  end

  def destroy
    Artist.delete(params[:id])
    redirect_to artists_url
  end

end