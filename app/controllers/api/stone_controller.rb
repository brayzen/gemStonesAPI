class StoneController < ActionController::API
  before_action :

  def index
    @stones = Stone.all?
    render json: @stones, status: :ok
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end


end
