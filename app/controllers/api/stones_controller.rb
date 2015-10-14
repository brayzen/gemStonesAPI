class API::StonesController < ApplicationController

  def index
    @stones = Stone.includes(:reviews, :images)
    render json: @stones.as_json(include: [:reviews, :images]) , status: :ok
  end

  def show
    @stone = Stone.find(params[:id])
    render json: @stone.as_json(include: [:reviews, :images]) , status: :ok
  end

  def create
  end

  def update
  end

  def destroy
  end


end
