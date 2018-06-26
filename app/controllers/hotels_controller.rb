class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
    @feedback = @hotel.feedbacks.build
    @persisted_feedbacks = @hotel.feedbacks.find_all  { |feedback| feedback.persisted? }
    @average_rating_cleanliness =
      (@persisted_feedbacks.sum(&:cleanliness).to_f /
      @persisted_feedbacks.count).round(2)
    @average_rating_placement = (@persisted_feedbacks.sum(&:placement).to_f /
      @persisted_feedbacks.count).round(2)
    @average_rating_comunication = (@persisted_feedbacks.sum(&:communication).to_f /
      @persisted_feedbacks.count).round(2)
  end
end
