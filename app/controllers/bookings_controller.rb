class BookingsController < ApplicationController
  def new
    @bathroom = Bathroom.find(params[:bathroom_id])
    @booking = Booking.new
    @booking.user = current_user # pundit?
#     authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.save
    redirect_to bathroom_bookings_path
  end

  def index
    @bookings = Booking.where("bathroom_id = #{params[:bathroom_id]}")
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  # def get_booking

  # end

  # def get_bathroom

  # end

  def booking_params
    params.permit(:bathroom_id, :user)
  end
end
