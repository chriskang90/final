class FestivalsController < ApplicationController

  before_action :require_user, :except => [:index, :show]

  def require_user
    if session[:user_id].blank?
      redirect_to '/login', notice: "Please login."
    end
  end

  def index
    # per internally calls .limit
    @festivals = Festival.page(params[:page]).per(10)
  end

  def show
  	@festival = Festival.find_by(id: params["id"])
  	@location = Location.find_by(id: @festival.location_id)
  	@genre = Genre.find_by(id: @festival.genre_id)

  	if @festival == nil
  		redirect_to festivals_url, notice: "Festival not found"
    else
      # Make this empty string if it does not exist
      cookies["festival_ids"] ||= ""

      # Add id with a space if the festival id is not already included in the browsing history
      if not cookies["festival_ids"].include?(@festival.id.to_s)
        cookies["festival_ids"] += "#{@festival.id} "
      end
    end
  end

  def new
  	@locations = Location.all.limit(100)
  	@genres = Genre.all.limit(100)
  end

  def create
    @festival = Festival.new
    @festival.name = params[:name]
    @festival.price = params[:price].to_i
    @festival.website = params[:website]
    if params[:date_start].blank?
      @festival.date_start = nil
    else
      @festival.date_start = Date.strptime(params[:date_start], "%Y-%m-%d")
    end
    if params[:date_end].blank?
      @festival.date_end = nil
    else
      @festival.date_end = Date.strptime(params[:date_end], "%Y-%m-%d")
    end
    @festival.description = params[:description]
    @festival.logo_url = params[:logo_url]
    @festival.location_id = params[:location_id]
    @festival.genre_id = params[:genre_id]
    
    if @festival.save
      redirect_to festivals_url
    else
      @locations = Location.all.limit(100)
      @genres = Genre.all.limit(100)
      render 'new'
    end
    
  end

  def edit
  	@festival = Festival.find_by(id: params["id"])
  	@locations = Location.all.limit(100)
  	@genres = Genre.all.limit(100)
  end

  def update
  	@festival = Festival.find_by(id: params["id"])
    @festival.name = params[:name]
    @festival.price = params[:price]
    @festival.website = params[:website]
    @festival.date_start = params[:date_start]
    @festival.date_end = params[:date_end]
    @festival.description = params[:description]
    @festival.logo_url = params[:logo_url]
    @festival.location_id = params[:location_id]
    @festival.genre_id = params[:genre_id]

    if @festival.save
      redirect_to festivals_url
    else
      @locations = Location.all.limit(100)
      @genres = Genre.all.limit(100)
      render 'edit'
    end
  end

  def destroy
  	Festival.destroy(params[:id])
    redirect_to festivals_url
  end

end
