class CarsController < ApplicationController

  def index
    @cars = Car.all
    render json: { status: 'SUCCESS', message: 'Loaded Cars', cars: @cars}, status: :ok
    # render json: { status: 'SUCCESS', message: 'Loaded Cars',
    #   cars: @cars.map { |car|
    #   car.as_json.merge({ image: rails_blob_url(car.featured_image) })}},
    # status: :ok
  end

  def show
    @car = Car.find(params[:id])
    @image = rails_blob_url(@car.image)
    render json: { status: 'SUCCESS', message: 'Loaded car', car: @car, image: @image }, status: :ok
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      render json: { status: 'SUCCESS', message: 'Added Car', data: @car }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Car Not Added', data: @car.errors }, status: :unprocessable_entry
    end
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      render json: { status: 'SUCCESS', message: 'Updated car', car: @car }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Car Not Updated',
                      data: @car.errors }, status: :unprocessable_entry
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    render json: { status: 'SUCCESS', message: 'Deleted car', car: @car }, status: :ok
  end

  private

  def car_params
    params.permit(:name, :model, :price, :image)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end

