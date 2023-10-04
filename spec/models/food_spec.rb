require 'rails_helper'

RSpec.describe Food, type: :model do
  before do
    @food = FactoryBot.build(:food)
  end

  describe 'レシピ投稿' do
      context '投稿できない場合' do
        it "nameがないと投稿できない" do
          @food.name = ''
          @food.valid?
          expect(@food.errors.full_messages).to include("Name can't be blank")
        end
        it "quantityがないと投稿できない" do
          @food.quantity = ''
          @food.valid?
          expect(@food.errors.full_messages).to include("Quantity can't be blank")
        end
        it "recipeが紐付いていないと投稿できない" do
          @food.recipe = nil
          @food.valid?
          expect(@food.errors.full_messages).to include("Recipe must exist")
        end
      end
  end
end
