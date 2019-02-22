class CreateOrderProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :order_products do |t|
      t.references :product, :order
      t.integer :quantity

      t.timestamps
    end
  end
end
