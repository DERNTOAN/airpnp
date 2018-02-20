class UsersController < ApplicationController
  before_action :get_user, only: [:show, :update, :edit]

  def new
    @user = User.new

  end

  def create
    u = User.create(user_params)
    redirect_to u_path

  end

  def update
  end

  def show
    authorize @user
  end

  def edit
    u = User.create(user_params)
    redirect_to u_path

  end

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit([:email, :password, :photo, :photo_cache, :first_name, :last_name, :gender])
  end

end
