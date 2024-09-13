class Inventory < ApplicationRecord
  belongs_to :department
  has_many :items, dependent: :destroy
end
