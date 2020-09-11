class PhotosController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
  before_action :move_to_index, except: [:index, :show]
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  
  def index
    @photos = Photo.all.order("created_at ASC")
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.valid?
      @photo.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @photo.update(photo_params)
      redirect_to photo_path
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    if @photo.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def photo_params
    params.require(:photo).permit(
      :image, :name, :camera_id, :lenz_id, :lenz_type_id, :iso_speed_id, 
      :exposure_time, :aperture, :focal, :white_balance_id, :flash_id, 
      :shooting_place, :shooting_date).merge(user_id: current_user.id)
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
