class CartedProduct < ApplicationRecord
  belongs_to :product, optional:true 
  belongs_to :order, optional:true

  validates :quantity, presence: true 
  validate :quantity_must_be_less_than_5 

  def quantity_must_be_less_than_5 
    if quantity && quantity >= 5 
      errors.add(:quantity, "Sorry Products can't exceed quantity 5")
    end 
  end 
end
