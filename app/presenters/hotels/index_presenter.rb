module Hotels
  class IndexPresenter
    attr_reader :persisted_feedbacks
    attr_reader :hotel

    def initialize(hotel)
      @hotel = hotel
      @persisted_feedbacks = hotel.feedbacks.find_all  { |feedback| feedback.persisted? }
    end

    [:cleanliness, :placement, :communication].each do |name|
      define_method(name) do
        @hotel.feedbacks.average(name).round(2)
      end
    end
  end

end
