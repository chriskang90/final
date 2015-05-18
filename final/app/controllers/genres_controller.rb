class GenresController < ApplicationController

  def index
  	@genres = Genre.all.limit(100)
  end

  def show
    @genre = Genre.find_by(id: params["id"])
    @festivals = Festival.where(genre_id: params["id"])

  	if @genre == nil
  		redirect_to genres_url, notice: "Genre not found"
  	end
  end

  def new
  end

  def create
  	@genre = Genre.new
  	@genre.name = params[:name]
  	@genre.description = params[:description]
  	if @genre.save
      redirect_to genres_url
    else
      render 'new'
    end
  end

  def edit
  	@genre = Genre.find_by(id: params["id"])
  end

  def update
  	genre = Genre.find_by(id: params["id"])
  	genre.name = params[:name]
  	genre.description = params[:description]
  	genre.save
  	redirect_to genres_url
  end

end