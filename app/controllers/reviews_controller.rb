class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @list = List.find(params[:list_id])
    @review.list = @list
    if @review.save
      @review.save
      redirect_to list_path(@list)
    else
      redirect_to list_path(@list)
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
