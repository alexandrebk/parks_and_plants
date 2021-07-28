class GardensController < ApplicationController
  def index
    @gardens = Garden.all
  end

  def show
    @garden = Garden.find(params[:id])
    # @plants = Plant.where(garden_id: params[:id])
    @plants = @garden.plants
  end
end
