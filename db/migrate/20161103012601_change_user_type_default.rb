class ChangeUserTypeDefault < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :type, from: nil, to: 'user'
  end
end
