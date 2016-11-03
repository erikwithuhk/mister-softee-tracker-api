class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :type, default: 'User'
      t.float :position_lat
      t.float :position_lng

      t.timestamps
    end
  end
end
