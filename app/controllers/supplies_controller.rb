class SuppliesController < ApplicationController
  before_action :set_supply, only: [:show, :edit, :update, :destroy]

  def index
    @supplies = Supply.all
    respond_with(@supplies)
  end

  def show
    respond_with(@supply)
  end

  def new
    @supply = Supply.new
    respond_with(@supply)
  end

  def edit
  end

  def create
    @supply = Supply.new(supply_params)
    @supply.save
    respond_with(@supply)
  end

  def update
    @supply.update(supply_params)
    respond_with(@supply)
  end

  def destroy
    @supply.destroy
    respond_with(@supply)
  end

  private
    def set_supply
      @supply = Supply.find(params[:id])
    end

    def supply_params
      params.require(:supply).permit(:title, :color, :price, :description, :condition, :photo)
    end
end
