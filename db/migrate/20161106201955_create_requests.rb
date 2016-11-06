class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :customer_id
      t.integer :vendor_id
      t.string :status, default: 'pending'
      t.boolean :isExpired, default: false

      t.timestamps
    end
  end
end
