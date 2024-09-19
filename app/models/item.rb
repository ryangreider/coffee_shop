class Item < ApplicationRecord
    #belongs_to :category
    #belongs_to :supplier
    belongs_to :department
    
  validates :name, :quantity, :category, :cost, presence: true
  validates :quantity, :cost, numericality: { greater_than_or_equal_to: 0 }
end
