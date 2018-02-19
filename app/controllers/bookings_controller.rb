class BookingsController < ApplicationController
  def new
    @bathroom = Bathroom.find(params[:bathroom_id])
    @booking = Booking.new
    @booking.user = current_user
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.save
  end

  def index
  end

  def show
  end

  private

  def get_booking

  end

  def get_bathroom

  end

  def booking_params
    params.permit(:bathroom_id, :user)
  end
end
