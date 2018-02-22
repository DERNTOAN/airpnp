class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new(review_params)
    @bathroom = Bathroom.new(params[:bathroom_id])
  end

  def create
    @review = Review.new(review_params)
    @review.bathroom = Bathroom.find(params[:review_params])

    if @review.save
      redirect_to bathroom_path(@review.bathroom)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end


