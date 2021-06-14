class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @plans = @user.plans
    @plans = Plan.order(created_at: :desc).limit(20)
  end

  # def acts_as_favoritable
  #   @space = Space.find(1)
  #   user.favorite(@space)
  # end
end
