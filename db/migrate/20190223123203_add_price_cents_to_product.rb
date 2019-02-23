class AddPriceCentsToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :price_cents, :integer, :default => ''
  end
end
