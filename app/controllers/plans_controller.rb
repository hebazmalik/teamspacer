class PlansController < ApplicationController

  def space
    @space = Space.find(params[:space_id])
    if session[:plan].blank?
      session[:plan] = {}
    end
    session[:plan][:space_id] = params[:space_id]
    redirect_to restaurants_path(@space.area, area: params[:area], query: params[:query])
  end

  def restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    if session[:plan].blank?
      return redirect_to area_spaces_path(@restaurant.area), notice: "please choose a space first"
    end
    session[:plan][:restaurant_id] = params[:restaurant_id]
    redirect_to new_plan_path
  end

  def new
    if session.dig(:plan, :space_id).blank? || session.dig(:plan, :restaurant_id).blank?
      return redirect_to root_path, notice: "please select a space and a restaurant before creating your plan"
    end
    @plan = Plan.new
    @space = Space.find(session[:plan][:space_id])
    @restaurant = Restaurant.find(session[:plan][:restaurant_id])
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.space_id = session[:plan][:space_id]
    @plan.restaurant_id = session[:plan][:restaurant_id]

    if plan.save
      redirect_to user_path(current_user)
      session[:plan] = nil
    else
      render :new
    end

  end

  private

  def plan_params
    params.require(:plans).permit(:time, :date, :meeting_point)
  end

end
