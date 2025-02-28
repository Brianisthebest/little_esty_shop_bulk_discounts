class BulkDiscount < ApplicationRecord
  belongs_to :merchant
  has_many :items, through: :merchant
  has_many :invoice_items, through: :items

  validates_presence_of :percentage_discount, :quantity_threshold
  
  validates :percentage_discount, numericality: { only_float: true, greater_than_or_equal_to: 0 }
  validates :quantity_threshold, numericality: { only_integer: true, greater_than: 0 }

  def bulk_discount_merchant
    merchant
  end
end
