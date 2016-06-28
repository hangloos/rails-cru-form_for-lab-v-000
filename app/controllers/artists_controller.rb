class ArtistsController < ApplicationController
  def create
    @artist = Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
    redirect_to artist_path(@artist)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(post_params(:name))
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def index
  end

  private

  def post_params(*args)
    params.require(:artist).permit(*args)
  end
end