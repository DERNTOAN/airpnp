class BathroomsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @bathroom = Bathroom.new
    authorize @bathroom
    @bathrooms = policy_scope(Bathroom) #.near(current_user.address, 3)
    @bathrooms = @bathrooms.where.not(latitude: nil, longitude: nil)

    if params[:bathroom]

      @bathroom = Bathroom.new(bathroom_params)
      @bathrooms = @bathrooms.select do |bathroom|
        filter(bathroom)
      end
    end
    @user_location = session[:user_coordinates]
    @markers = @bathrooms.map do |bathroom|
      {
        lat: bathroom.latitude,
        lng: bathroom.longitude,
        icon: 'toilet-marker.png',
        draggable: false,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
    @user_marker = {
      lat: @user_location["latitude"],
      lng: @user_location["longitude"],
      icon: 'user-marker.png'
    }
  end

  def show
    @bathroom = Bathroom.find(params[:id])
    @markers =
    [{
      lat: @bathroom.latitude,
      lng: @bathroom.longitude,
      icon: '/toilet-marker.png',
      draggable: false
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        }]
        @user_location = request.location
        @user_marker = {
          lat: @user_location["latitude"],
          lng: @user_location["longitude"],

          icon: '/user-marker.png',
        }
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

  def filter(bathroom)
    arr = []
    bathroom_params.each do |key, value|
        par = value == "" ? true : bathroom.price <= value.to_i if key == "price"
        par = value == "0" ? true : bathroom[key] == (value == "1") if %w(handicapped baby bidet).include? key
        par = value == "0" ? true : bathroom[key] == value.to_i if key == "wipes"
        par = value == "western" ? true : bathroom.style == value if key == "style"
        arr << par
    end
    arr.all?
  end

end


