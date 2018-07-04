class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :adress
      t.text :description

      t.timestamps
    end
  end
end
