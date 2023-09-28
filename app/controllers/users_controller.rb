class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        @nickname = user.nickname
        @recipes = user.recipes
        @favorited_recipes = current_user.favorited_recipes
    end
end
