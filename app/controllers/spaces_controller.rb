class SpacesController < ApplicationController

  def show
    @space = Space.find(params[:id])
    @markers = [
      {
        lat: @space.latitude,
        lng: @space.longitude
      }
    ]
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

  def toggle_favorite
    @space = Space.find_by(id: params[:id])
    current_user.favorited?(@space)  ? current_user.unfavorite(@space) : current_user.favorite(@space)
    # redirect_to spaces_path(scroll: true)
    if params[:show].present?
      redirect_to space_path(@space, search: {area: params.dig(:search, :area), space: params.dig(:search, :space)})
    else
      redirect_to spaces_path(scroll: true, search: {area: params.dig(:search, :area), space: params.dig(:search, :space)})
    end
    # redirect_back(fallback_location: user_path(current_user))
  end

  private

  def space_params
    params.require(:space).permit(:name, :location, :description, :photo)
  end

end


