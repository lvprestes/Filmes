class Filme < ApplicationRecord
    belongs_to :user
    has_many :reviews
    validates :ano, numericality: { greater_than_or_equal_to: 0}
    validates :url_capa, 
end
