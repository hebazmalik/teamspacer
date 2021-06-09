class SpacesController < ApplicationController

  def show
    @space = Space.find(params[:id])
  end

  def index
    raise
    if params[:query].present?
      @spaces = Space.search_by_space(params[:query])
    else
      @area = Area.find(params[:area_id])
      @spaces = @spaces.where(area: @area)
    end
  end

  private

  def space_params
    params.require(:space).permit(:name, :location, :description, :photo)

  end

end
