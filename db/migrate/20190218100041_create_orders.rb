class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :status, null: false, default: 0
      t.references :cliente, null: false

      t.timestamps
    end
  end
end
