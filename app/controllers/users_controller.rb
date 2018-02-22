class UsersController < ApplicationController
  before_action :get_user, only: [:show, :update, :edit]
  skip_before_action :authenticate_user!, only: :update_location
  skip_before_action :verify_authenticity_token, only: :update_location
  # before_action :verify_authorized, only: :update_location

  def new
    @user = User.new

  end

  def create
    u = User.create(user_params)
    redirect_to u_path
  end

  def update
    # # Ist nur Zwischenlösung für Mittwoch-Demo
    # authorize @user
    # @user.address = user_params[:address]
    # @user.save
    # redirect_to bathrooms_path
  end

  def show
    authorize @user
  end

  def edit
    u = User.create(user_params)
    redirect_to u_path
  end

  def update_location
    authorize current_user
    session[:user_coordinates] = params[:current_location]
    if session[:user_coordinates]
      render json: {message: "Yeaay"}
    else
      render json: {message: "noooooo"}
    end
  end

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit([:email, :password, :photo, :photo_cache, :first_name, :last_name, :gender, :address])
  end

end
