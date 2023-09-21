class Food < ApplicationRecord
    belongs_to :recipe, inverse_of: :foods
end
