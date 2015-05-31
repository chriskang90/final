class LocationsController < ApplicationController

  before_action :require_user, :except => [:index, :show]

  def require_user
    if session[:user_id].blank?
      redirect_to '/login', notice: "Please login."
    end
  end

  def index
    # per internally calls .limit
    @locations = Location.page(params[:page]).per(10)
  end

  def show
    @location = Location.find_by(id: params["id"])

  	if @location == nil
  		redirect_to locations_url, notice: "Location not found"
  	end

    # per internally calls .limit
    @festivals = Festival.where(location_id: params["id"]).page(params[:page]).per(10)

    # Include controller code for building marks on Google Maps
    @hash = Gmaps4rails.build_markers(@location) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
    end

  end

  def new
  end

  def create
    @location = Location.new
    @location.name = params[:name]
    @location.address = params[:address]
    @location.photo_url = params[:photo_url]
    @location.description = params[:description]
    if @location.save
      redirect_to locations_url
    else 
      render 'new'
    end
  end

  def edit
    @location = Location.find_by(id: params["id"])
  end

  def update
    @location = Location.find_by(id: params["id"])
    @location.name = params[:name]
    @location.address = params[:address]
    @location.photo_url = params[:photo_url]
    @location.description = params[:description]
    if @location.save
      redirect_to locations_url
    else 
      render 'edit'
    end
  end

  def destroy
    Location.delete(params[:id])
    redirect_to locations_url
  end

end
