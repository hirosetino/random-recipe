class Recipe < ApplicationRecord
    belongs_to :user
    has_many :foods, inverse_of: :recipe
    has_many :procedures, inverse_of: :recipe
    accepts_nested_attributes_for :foods, reject_if: :all_blank, allow_destroy: true
    accepts_nested_attributes_for :procedures, reject_if: :all_blank, allow_destroy: true

    has_one_attached :image
end
