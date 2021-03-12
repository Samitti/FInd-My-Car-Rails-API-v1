class FavsController < ApplicationController
  before_action :authorized  

  def index
    user = current_user!
    favs = user.favs
    render json: {message: 'Loaded favs', data: favs}
    # favs = []
    # favs_total.map{ |fav| favs << fav.car_id }
  end

  def create
    fav = Fav.new(fav_params)
    if fav.save
      render json: {message: 'Add Car to favs'}, status: :created
    else
      render json: {error: "Fav Not Saved"}, status: :unprocessable_entity
    end
  end

  def destroy
    fav = Fav.find(params[:id])
    fav.destroy
    render json: {message: 'Deleted fav'}
  end

  private

  def fav_params
    params.permit(:user_id, :car_id)
  end
end

