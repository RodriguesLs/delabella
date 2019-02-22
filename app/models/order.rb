class Order < ApplicationRecord
    has_many :order_products
    has_many :products, through: :order_products
    accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true
    enum status: { active: 0, archieve: 1 }
end
