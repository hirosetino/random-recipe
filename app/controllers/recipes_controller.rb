class RecipesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]

    def index
        @recipes = Recipe.all
    end

    def new
        @recipe = Recipe.new
        @recipe.foods.build
        @recipe.procedures.build
    end

    def create
        @recipe = Recipe.new(recipe_params)
        if @recipe.save
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    def recipe_params
        params.require(:recipe).permit(:image, :title, :cooking_time_id, foods_attributes: [:id, :name, :quantity, :_destroy], procedures_attributes: [:id, :cooking_method, :_destroy]).merge(user_id: current_user.id)
    end
end
