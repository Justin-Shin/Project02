class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @foods = Food.all
  end

  def create
    @recipe = Recipe.create!(recipe_params)
    params[:foods].each do |food|
      @recipe.foods << Food.find_by_name(food)
    end

    redirect_to edit_recipe_path @recipe
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.ingredients.each do |ingredient|
      ingredient.update(amount: params[:food_amount][ingredient.food.name.to_sym].first.last,unit_of_measure:params[:food_unit][ingredient.food.name.to_sym].first.last)
    end

    Recipe.update(recipe_params)
    if params[:foods]
      params[:foods].each do |food|
        @recipe.foods << Food.find_by_name(food)
      end
    end

    redirect_to recipe_path @recipe
  end

  def destroy
  end


  private
    def recipe_params
      params.require(:recipe).permit(:name, :instructions, :servings)
    end

end
