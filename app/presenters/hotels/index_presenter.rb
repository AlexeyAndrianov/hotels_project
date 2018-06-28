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
        if @persisted_feedbacks.any?
          @persisted_feedbacks.average(name).round(2)
        else
          0
        end
      end
    end
  end

end
