class InvitesController < ApplicationController
  def create
    @plan = Plan.find(params[:plan_id])
    @invite = Invite.new(invite_params)
    @invite.plan = @plan
    if @invite.save
      redirect_to user_path(current_user), notice: "#{@invite.user.email} was added to your plan"
    else
      redirect_to user_path(current_user), alert: "Please select a user"
    end
  end

  private

  def invite_params
    params.require(:invite).permit(:user_id)
  end
end
