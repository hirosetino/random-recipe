class UsersController < ApplicationController
    def show
        @nickname = current_user.nickname
        @recipes = current_user.recipes
    end
end
