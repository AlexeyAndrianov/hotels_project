class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
    @feedback = @hotel.feedbacks.build
    @persisted_feedbacks = @hotel.feedbacks.find_all  { |feedback| feedback.persisted? }
  end
end
