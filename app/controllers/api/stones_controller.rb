class API::StonesController < ApplicationController

  def index
    @stones = Stone.includes(:reviews, :images)
    render json: @stones.as_json(include: [:reviews, :images]) , status: :ok
  end

  def create
    stone = Stone.new(stone_params)

    if stone.save
      render json: stone, status: :created
    else
      render json: stone.errors, status: :unprocessable_entity
    end
  end

  def show
    @stone = Stone.find(params[:id])
    render json: @stone.as_json(include: [:reviews, :images]) , status: :ok
  end

  # def show
  #   @stone = Stone.find(params[:id])
  #   render json: { stone: @stone, desciption: @stone.description, name: @stone.name }
  # end

  private
    def stone_params
      params.require(:gemstone).permit(:name, :price)
    end


end
