class Food < ApplicationRecord
    belongs_to :recipe, inverse_of: :foods

    validates :name, presence: true
    validates :quantity, presence: true
end
