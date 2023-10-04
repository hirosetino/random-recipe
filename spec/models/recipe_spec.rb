require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before do
     # Recipe オブジェクトを作成
     @recipe = FactoryBot.build(:recipe)

     # Food オブジェクトを作成し、関連付け
     @food = FactoryBot.build(:food)
     @recipe.foods << @food
 
     # Procedure オブジェクトを作成し、関連付け
     @procedure = FactoryBot.build(:procedure)
     @recipe.procedures << @procedure
  end

  describe 'レシピ投稿' do
    context '投稿できる場合' do
      it "image, title, cooking_time_id, name, quantity, cooking_methodが存在すれば投稿できる" do
        expect(@recipe).to be_valid
      end

      context '投稿できない場合' do
        it "imageがないと投稿できない" do
          @recipe.image = nil
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include("Image can't be blank")
        end
        it "titleがないと投稿できない" do
          @recipe.title = ''
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include("Title can't be blank")
        end
        it "cooking_time_idがないと投稿できない" do
          @recipe.cooking_time_id = ''
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include("Cooking time can't be blank")
        end
        it "cooking_time_idが1だと投稿できない" do
          @recipe.cooking_time_id = 1
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include("Cooking time must be other than 1")
        end
        it "foodsがないと投稿できない" do
          @recipe.foods = []
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include("Foods 料理の材料を入力してください")
        end
        it "proceduresがないと投稿できない" do
          @recipe.procedures = []
          @recipe.valid?
          expect(@recipe.errors.full_messages).to include("Procedures 料理の作り方を入力してください")
        end
      end
    end
  end
end
