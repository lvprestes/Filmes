class Review < ApplicationRecord
    belongs_to :filme
    belongs_to :user
end
