class ArtworksController < ApplicationController
  before_action :set_artwork, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_artist!, except: [:index, :show]
  before_action :correct_artist, only: [:edit, :update, :destroy]

  def index
    @artworks = Artwork.all
  end

  def show
  end

  def new
    # @artwork = Artwork.new
    @artwork = current_artist.artworks.build
  end

  def edit
  end

  def create
    @artwork = current_artist.artworks.build(artwork_params)

    respond_to do |format|
      if @artwork.save
        format.html { redirect_to @artwork, notice: 'Artwork was successfully created.' }
        format.json { render :show, status: :created, address: @artwork }
      else
        format.html { render :new }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @artwork.update(artwork_params)
        format.html { redirect_to @artwork, notice: 'Artwork was successfully updated.' }
        format.json { render :show, status: :ok, address: @artwork }
      else
        format.html { render :edit }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @artwork.destroy
    respond_to do |format|
      format.html { redirect_to artworks_url, notice: 'Artwork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_artwork
      @artwork = Artwork.find(params[:id])
    end

    def correct_artist
      @pin = current_artist.artworks.find_by(id: params[:id])
      redirect_to artworks_path, notice: "Not authorized to edit this artwork" if @artwork.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artwork_params
      params.require(:artwork).permit(:title, :description, :photo, :pickup_only, :price, :dimensions, :color)
    end
end
