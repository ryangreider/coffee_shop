class Item < ApplicationRecord
    #belongs_to :category
    #belongs_to :supplier
    #has_one :inventory

    belongs_to :inventory
    
  validates :name, :quantity, :category, :cost, presence: true
  validates :quantity, :cost, numericality: { greater_than_or_equal_to: 0 }
end
