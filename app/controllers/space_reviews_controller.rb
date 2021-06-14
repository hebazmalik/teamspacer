class SpaceReviewsController < ApplicationController

  # def new
  #   @space_review = SpaceReview.new 
  #   @space = Space.find(params[:space_id])
  # end
  
  def create
    @space = Space.find(params[:space_id])
    @space_review = SpaceReview.new(space_review_params)
    @space_review.space = @space
    @space_review.user = current_user
    
    if @space_review.save 
      redirect_to space_path(@space)
    else
      redirect_to space_path(@space), alert: "something went wrong, please try again!"
    end 
  end 

  def destroy
    @space_review = SpaceReview.find(params[:id])
    @space_review.destroy
    redirect_to space_path(@space_review.space)
  end

  private

  def space_review_params
    params.require(:space_review).permit(:content, :rating)
  end 
end
