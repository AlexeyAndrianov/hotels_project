module Hotels
  class FeedbacksController < ApplicationController
    before_action :find_hotel

    def index
      @feedbacks = @hotel.feedbacks
    end

    def create
      @feedback = @hotel.feedbacks.build(allowed_params.merge(user_id: current_user.id))
      @feedback_owner = @feedback.user.email
      @presenter = Hotels::IndexPresenter.new(@hotel)
      if @feedback.save
        redirect_to  hotel_path(@hotel)
      else
        @persisted_feedbacks = @hotel.feedbacks.find_all  { |feedback| feedback.persisted? }
        render template: 'hotels/show'
      end
    end

    private
    def allowed_params
      params.require(:feedback).permit(
        :send_by,
        :review,
        :cleanliness,
        :communication,
        :placement)
    end

    def find_hotel
      @hotel = Hotel.find(params[:hotel_id])
    end
  end
end
