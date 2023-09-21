class Recipe < ApplicationRecord
    belongs_to :user
    has_many :foods
    has_many :procedures

    has_one_attached :image
end
