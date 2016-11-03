class AddUserTypeAndLocationToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :type, :string
    add_column :users, :position_lat, :float
    add_column :users, :position_lng, :float
  end
end
