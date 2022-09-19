class Review < ApplicationRecord
    belongs_to :filme
    belongs_to :user
    validates :nota, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
end
