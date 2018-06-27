module Hotels
  class IndexPresenter
    attr_reader :persisted_feedbacks
    attr_reader :hotel

    def initialize(hotel)
      @hotel = hotel
      @persisted_feedbacks = hotel.feedbacks.find_all  { |feedback| feedback.persisted? }
    end
    def average_rating_cleanliness
      @hotel.feedbacks.average(:cleanliness).round(2)
    end

    def average_rating_placement
      @hotel.feedbacks.average(:placement).round(2)
    end

    def average_rating_comunication
      @hotel.feedbacks.average(:communication).round(2)
    end
  end
end
