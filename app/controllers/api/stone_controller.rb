class StoneController < ActionController::API
  before_action :

  def index
    @stones = Stone.all?
    render json: @stones, status: :ok
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
