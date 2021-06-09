class SpacesController < ApplicationController

  def show
    @space = Space.find(params[:id])
  end

  def index
    @spaces = Space.all
    if params[:search]
      @spaces = Space.search_by_space(params[:search][:space]) if params[:search][:space].present?

      if params[:search][:area].present?
        @area = Area.find_by_name(params[:search][:area])
        @spaces = @spaces.where(area: @area)
      end
    end
  end

  private

  def space_params
    params.require(:space).permit(:name, :location, :description, :photo)

  end

end
