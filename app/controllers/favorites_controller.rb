class FavoritesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_recipe, only: [:create, :destroy]

    def create
        favorite = current_user.favorites.build(recipe_id: params[:recipe_id])
        favorite.save
        render partial: "favorites/btn", locals: { recipe: @recipe }
    end
    
    def destroy
        favorite = Favorite.find_by(recipe_id: params[:recipe_id], user_id: current_user.id)
        favorite.destroy
        render partial: "favorites/btn", locals: { recipe: @recipe }
    end


    def set_recipe
        @recipe = Recipe.find(params[:recipe_id])
    end

end
