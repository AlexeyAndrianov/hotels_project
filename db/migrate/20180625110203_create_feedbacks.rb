class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.string :send_by
      t.text :review
      t.integer :cleanliness
      t.integer :placement
      t.integer :communication
      t.belongs_to :hotel, index: true

      t.timestamps
    end
  end
end
