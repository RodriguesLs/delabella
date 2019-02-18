class Order < ApplicationRecord
    has_many :order_products
    has_many :products, through: :order_products
    enum status: [:active, :archieve]

    accepts_nested_attributes_for :order_products, reject_if: :all_blank, allow_destroy: true
end
