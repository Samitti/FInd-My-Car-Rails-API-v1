class FavsController < ApplicationController

  def index
    @favs = Fav.all
    render json: {message: 'Loaded favs', data: @favs}
  end

  def create
    @fav = Fav.new(like_params)
    if @fav.save
      render json: {message: 'Add Car to favs'}
    else
      render json: {error: "Fav Not Saved"}
    end
  end

  def destroy
    @fav = Fav.find(params[:id])
    @fav.destroy
    render json: {message: 'Deleted fav'}
  end

  private

  def fav_params
    params.permit(:user_id, :car_id)
  end
end
