class SetDefaultUserAsUserRole < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      change_column_default(:users, :role, 1)
    end
  end
end
