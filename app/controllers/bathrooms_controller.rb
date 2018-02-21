class BathroomsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @bathrooms = policy_scope(Bathroom).near(current_user.address, 3)
    #  @bathrooms = Bathroom.where.not(latitude: nil, longitude: nil)

    @markers = @bathrooms.map do |bathroom|
      {
        lat: bathroom.latitude,
        lng: bathroom.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @bathroom = Bathroom.find(params[:id])
    @markers =
      [{
        lat: @bathroom.latitude,
        lng: @bathroom.longitude
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }]

    @owner = @bathroom.user
    @booking = Booking.new
    @booking.user = current_user
    # authorize @booking
    authorize @bathroom
  end

  def new
    @bathroom = Bathroom.new
    authorize @bathroom
  end

  def create
    @bathroom = Bathroom.new(bathroom_params)
    @bathroom.user = current_user
    authorize @bathroom
    if @bathroom.save
      redirect_to bathroom_path(@bathroom)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def bathroom_params
    params.require(:bathroom).permit(:address , :plz, :city, :title, :description, :price, :photo, :photo_cache, :handicapped, :style, :toilet_paper, :wipes, :baby, :bidet, :user_id)
  end
end


