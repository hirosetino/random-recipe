class RecipesController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :destroy]
    before_action :find_recipe, only: [:show, :edit, :update, :destroy]
    before_action :move_to_index, only: [:edit, :destroy]

    def index
        @recipes = Recipe.all
        respond_to do |format|
            format.html
            format.json { render json: @recipes }
        end
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

    def show
    end

    def edit
    end

    def update
        if @recipe.update(recipe_params)
            redirect_to recipe_path(@recipe.id)
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @recipe.destroy
        redirect_to root_path
    end

    def search
        @recipes = Recipe.search(params[:keyword])
    end

    private
    def recipe_params
        params.require(:recipe).permit(:image, :title, :cooking_time_id, foods_attributes: [:id, :name, :quantity, :_destroy], procedures_attributes: [:id, :cooking_method, :_destroy]).merge(user_id: current_user.id)
    end

    def find_recipe
        @recipe = Recipe.find(params[:id])
    end

    def move_to_index
        unless @recipe.user_id == current_user.id
            redirect_to root_path
        end
    end
end
