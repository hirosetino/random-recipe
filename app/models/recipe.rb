class Recipe < ApplicationRecord
    belongs_to :user
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :cooking_time, class_name: 'CookingTime'
    has_many :foods, inverse_of: :recipe, dependent: :destroy
    has_many :procedures, inverse_of: :recipe, dependent: :destroy
    accepts_nested_attributes_for :foods, reject_if: :all_blank, allow_destroy: true
    accepts_nested_attributes_for :procedures, reject_if: :all_blank, allow_destroy: true

    has_one_attached :image

    validates :image, presence: true
    validates :title, presence: true
    validates :cooking_time_id, presence: true, numericality: { other_than: 1 }
end
