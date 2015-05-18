class LocationsController < ApplicationController

  def index
    @locations = Location.all.limit(100)
  end

  def show
    @location = Location.find_by(id: params["id"])
    @festivals = Festival.where(location_id: params["id"])

  	if @location == nil
  		redirect_to locations_url, notice: "Location not found"
  	end
  end

  def new
  end

  def create
    @location = Location.new
    @location.name = params[:name]
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
    location = Location.find_by(id: params["id"])
    location.name = params[:name]
    location.photo_url = params[:photo_url]
    location.description = params[:description]
    location.save
    redirect_to locations_url
  end

  def destroy
    Location.delete(params[:id])
    redirect_to locations_url
  end

end
