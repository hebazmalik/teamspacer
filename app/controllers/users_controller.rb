class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  # def acts_as_favoritable
  #   @space = Space.find(1)
  #   user.favorite(@space)
  # end 
end
