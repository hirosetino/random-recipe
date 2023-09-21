class Procedure < ApplicationRecord
    belongs_to :recipe, inverse_of: :procedures

    validates :cooking_method, presence: true
end
