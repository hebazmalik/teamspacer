class RestaurantsController < ApplicationController

  def index
    # @area = Area.find(params[:area_id])
    @space = Space.find(session[:plan]['space_id'])
    @restaurants = Restaurant.near([@space.latitude, @space.longitude], 3, units: :km)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @markers = [
    {
      lat: @restaurant.latitude,
      lng: @restaurant.longitude
    }
  ]
  end

  def toggle_favorite
    @restaurant = Restaurant.find_by(id: params[:id])
    current_user.favorited?(@restaurant)  ? current_user.unfavorite(@restaurant) : current_user.favorite(@restaurant)

    redirect_back(fallback_location: user_path(current_user))
  end

  # def new
  #   @restaurant = Restaurant.new
  # end

  # def create
  #   @restaurant = Restaurant.new(restaurant_params)
  #   @restaurant.area_id = area.id
  #   if @restaurant.save
  #     redirect_to @restaurant, notice: 'Restaurant was successfully created!'
  #   else
  #     render :new
  #   end
  # end

  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  # end

  # def update
  #   @restaurant = Restaurant.find(params[:id])
  #   if @restaurant.update(restaurant_params)
  #     redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.destroy
  #   redirect_to user, notice: 'Restaurant was successfully destroyed.'
  # end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :description, :price, :cuisine, :opening_time, :closing_time, :photo)
  end

end
