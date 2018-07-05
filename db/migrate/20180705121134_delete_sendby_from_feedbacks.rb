class DeleteSendbyFromFeedbacks < ActiveRecord::Migration[5.2]
  def change
    remove_column :feedbacks, :send_by
  end
end
