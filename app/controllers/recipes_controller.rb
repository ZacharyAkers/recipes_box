class RecipesController < ApplicationController
    before_action :find_recipe, only: [:show, :destroy, :edit]

    def index
        @recipes = Recipe.all
    end

    def new
        @recipe = Recipe.new
    end

    def edit
        @recipe
    end

    def create
      @recipe = Recipe.new(recipe_params)
      if @recipe.save
        redirect_to recipes_path
      else
        flash ("Book not saved")
        redirect_to new_recipe_path
      end
    end

    def show
    end

    def destroy
      @recipe.destroy
      redirect_to recipes_path
    end

    private
    def recipe_params
        params.require(:recipe).permit(:name, :cook_time, :prep_time, :url)
    end

    def find_recipe
      @recipe = Recipe.find(params[:id])
    end
end
