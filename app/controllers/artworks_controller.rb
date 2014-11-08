class ArtworksController < ApplicationController
  before_action :set_artwork, only: [:show, :edit, :update, :destroy]

  def index
    @artworks = Artwork.all
  end

  def show
  end

  def new
    @artwork = Artwork.new
  end

  def edit
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.save
  end

  def update
    @artwork.update(artwork_params)
  end

  def destroy
    @artwork.destroy
  end

  private
    def set_artwork
      @artwork = Artwork.find(params[:id])
    end

    def artwork_params
      params.require(:artwork).permit(:title, :description, :photo, :pickup_only, :price, :dimensions, :color)
    end
end
