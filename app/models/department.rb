class Department < ApplicationRecord
    has_many :inventories, dependent: :destroy
    validates :name, presence: true
end
