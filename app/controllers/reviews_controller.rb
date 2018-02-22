class ReviewsController < ApplicationController
  def index
    @reviews = policy_scope(Review)
    # @review = Review.find(params[:id])
    @bathroom = Bathroom.find(params[:bathroom_id])
    # @average = @reviews.ratings.sum/(@reviews.ratings.count)

  end

  def show
    @review = Review.find(params[:id])
    authorize @review
  end

  def new
    @review = Review.new
    @bathroom = Bathroom.find(params[:bathroom_id])
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.bathroom = Bathroom.find(params[:bathroom_id])
    authorize @review
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


