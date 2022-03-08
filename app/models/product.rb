class Product < ApplicationRecord
    has_many :reviews, dependent: :destroy

    validates :name, presence: true
    validates :description, presence: true, length: {minimum: 40}
    validates :price, comparison: {greater_than: 0}
    validates :stock, presence: true
    
end
