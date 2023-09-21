class Procedure < ApplicationRecord
    belongs_to :recipe, inverse_of: :procedures
end
