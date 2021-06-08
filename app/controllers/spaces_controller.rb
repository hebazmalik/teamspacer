class SpacesController < ApplicationController

  def show
    @space = Space.find(params[:id])
  end

  def index
    if params[:query].present?
      @spaces = Space.search_by_space(params[:query])
    else
      @area = Area.find(params[:area_id])
      @spaces = Space.where(area: @area)
    end
  end

end
