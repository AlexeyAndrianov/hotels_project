class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
  end

  def create
    @feedback = Feedback.new(allowed_params)
    if @feedback.save
      redirect_to hotels_path
    else
      @hotel = @feedback.hotel
      @persisted_feedbacks = @hotel.feedbacks.find_all  { |feedback| feedback.persisted? }
      render template: 'hotels/show'
    end
  end

  private
  def allowed_params
    params.require(:feedback).permit(
      :hotel_id,
      :send_by,
      :review,
      :cleanliness,
      :communication,
      :placement)
  end

end
