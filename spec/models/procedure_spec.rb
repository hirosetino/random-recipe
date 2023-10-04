require 'rails_helper'

RSpec.describe Procedure, type: :model do
  before do
    @procedure = FactoryBot.build(:procedure)
  end

  describe 'レシピ投稿' do
      context '投稿できない場合' do
        it "cooking_methodがないと投稿できない" do
          @procedure.cooking_method = ''
          @procedure.valid?
          expect(@procedure.errors.full_messages).to include("Cooking method can't be blank")
        end
        it "recipeが紐付いていないと投稿できない" do
          @procedure.recipe = nil
          @procedure.valid?
          expect(@procedure.errors.full_messages).to include("Recipe must exist")
        end
      end
  end
end
