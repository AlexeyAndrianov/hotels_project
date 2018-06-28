class HotelsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin?

  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
    @feedback = @hotel.feedbacks.build
    @presenter = Hotels::IndexPresenter.new(@hotel)
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(allowed_params)
    if @hotel.save
      redirect_to hotels_path
    else
      render 'new'
    end
  end

  private
  def admin?
    current_user.role == "admin"
  end

  def allowed_params
    params.require(:hotel).permit(:name, :description)
  end
end
