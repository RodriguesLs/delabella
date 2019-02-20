class Order < ApplicationRecord
    has_and_belongs_to_many :products
    accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true
    enum status: [:active, :archieve]
end
