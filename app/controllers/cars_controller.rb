class CarsController < ApplicationController

  def index
    @cars = Car.all
    # render json: {message: 'Loaded Cars', cars: @cars}
    render json: { status: 'SUCCESS', message: 'Loaded Cars',
      cars: @cars.map { |car|
      car.as_json.merge({ image: rails_blob_url(car.image) })}}, status: :ok
  end

  def show
    @car = Car.find(params[:id])
    @image = rails_blob_url(@car.image)
    render json: {message: 'Loaded car', car: @car, image: @image }, status: :ok
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      render json: {message: 'Added Car', data: @car }, status: :created
    else
      render json: {error: 'Car Not Added'}, status: :unprocessable_entity
    end
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      render json: {message: 'Updated car', car: @car }, status: :ok
    else
      render json: {error: 'Car Not Updated'}, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    render json: {message: 'Deleted car', car: @car }, status: :ok
  end

  private

  def car_params
    params.permit(:name, :model, :price, :image)
  end
end

