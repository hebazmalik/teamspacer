class SpacesController < ApplicationController

  def show
    @space = Space.find(params[:id])
  end

  def index
    if params[:query].present?
      @spaces = Space.search_by_space(params[:query])
    end
      if params[:area].present?
        @area = Area.find(params[:area])
        @spaces = @spaces.where(area: @area)
      end
  end

  private

  def space_params
    params.require(:space).permit(:name, :location, :description, :photo)

  end

end
