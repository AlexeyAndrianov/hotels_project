class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
    @feedback = @hotel.feedbacks.build
    @presenter = Hotels::IndexPresenter.new(@hotel)
  end
end
