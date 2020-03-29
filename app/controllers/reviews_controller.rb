class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.build(review_params)
    if @review.save
      flash[:success] = "Review added successfully."
      redirect_to request.referrer
    else
      flash[:danger] = "Invalid data. Please try again!"
      redirect_to request.referrer
    end
  end

  private

  def review_params
    params.permit(:business_id, :description, :rating)
  end
end
