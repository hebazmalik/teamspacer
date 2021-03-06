class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @plans = @user.plans
    @favorite_spaces = @user.favorites_by_type('Space').map(&:favoritable)
    @favorite_restaurants = @user.favorites_by_type('Restaurant').map(&:favoritable)
    @plans = Plan.order(created_at: :desc).limit(20)
    @invite = Invite.new
  end

  # def acts_as_favoritable
  #   @space = Space.find(1)
  #   user.favorite(@space)
  # end
end
