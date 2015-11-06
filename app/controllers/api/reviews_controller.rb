class ReviewsController < ApplicationController::Base
  def create
    review = Review.new(review_params)
    if review.save?
      flash[:success] = "Your review has been persisted"
    else
      flash[:error] = "Failed to save"
    end
  end

  def update
    review = Review.find(params[:id])
    review.build(review_params)
    if review.save?
      flash[:success] = "Your review has been updated"
    else
      flash[:error] = "Your review was not updated, something went wrong"
    end
  end

  private
    def review_params
      params.require(:review).permit(:stars, :author, :body, :stone_id)
    end
end
