class RecipesController < ApplicationController
   before_action :find_recipe, only: [:show, :destroy, :edit, :update]
   before_action :authorize, except: [:show, :index]

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
     @recipe = Recipe.new(recipe_params)
     @recipe[:user_id] = current_user.id
     if @recipe.save
        redirect_to recipes_path
     else
        redirect_to new_recipes_path
     end
  end

  def show
     @recipe
  end

  def edit
     @recipe
  end

  def destroy
     @recipe.steps.destroy_all
     @recipe.ingredients.destroy_all
     @recipe.destroy
     redirect_to recipes_path
  end

  def update
     @recipe.update(recipe_params)
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