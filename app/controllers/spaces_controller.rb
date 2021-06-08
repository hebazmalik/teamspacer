class SpacesController < ApplicationController

  def show
    @space = Space.find(params[:id])
  end

  def index
    @area = Area.find(params[:area_id])
    @spaces = Space.where(area: @area)
  end

  private

  def space_params
    params.require(:space).permit(:name, :location, :description, :photo)
  end

end
