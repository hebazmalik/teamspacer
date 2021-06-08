class SpacesController < ApplicationController

  def show
    @space = Space.find(params[:id])
  end 

  def index
    @area = Area.find(params[:area_id])
    @spaces = Space.where(area: @area)
  end 

end
