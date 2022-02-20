class Product < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true, length: {minimum: 10}
    validates :price, comparison: {greater_than: 0}
    
end
