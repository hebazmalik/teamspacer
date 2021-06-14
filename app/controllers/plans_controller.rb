class PlansController < ApplicationController
  def space
    @space = Space.find(params[:space_id])
    if session[:plan].blank?
      session[:plan] = {}
    end
    session[:plan][:space_id] = params[:space_id]
    redirect_to restaurants_path(area: params[:area], query: params[:query])
  end

  def restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    if session[:plan].blank?
      return redirect_to spaces_path(@restaurant.area), notice: "please choose a space first"
    end
    session[:plan][:restaurant_id] = params[:restaurant_id]
    redirect_to new_plan_path
  end

  def new
    if session.dig(:plan, 'space_id').blank? || session.dig(:plan, 'restaurant_id').blank?
      return redirect_to root_path, notice: "please select a space and a restaurant before creating your plan"
    end
    @plan = Plan.new
    @space = Space.find(session[:plan]['space_id'])
    @restaurant = Restaurant.find(session[:plan]['restaurant_id'])
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.space_id = session[:plan]['space_id']
    @plan.restaurant_id = session[:plan]['restaurant_id']
    @plan.user = current_user
    if @plan.save!
      redirect_to user_path(current_user)
      session[:plan] = nil
    else
      render :new
    end
  end

  def destroy
    @plan = Plan.find(params[:id])
    user = @plan.user
    @plan.destroy
    flash[:notice] = 'Plan was successfully deleted.'
    redirect_back(fallback_location: user_path(user))
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    user = @plan.user
    if @plan.update(plan_params)
      redirect_to user_path(user)
    else
      render :edit
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:time, :date, :meeting_point, :space_id, :restaurant_id)
  end
end
