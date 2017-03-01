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
      ingredient.update(amount: params[:recipe][:amount][ingredient.food.name.to_sym],unit_of_measure:params[:recipe][:unit][ingredient.food.name.to_sym])
    end

    @recipe.update(recipe_params)
    if params[:foods]
      params[:foods].each do |food|
        @recipe.foods << Food.find_by_name(food)
      end
    end

    redirect_to recipe_path @recipe
  end

  def possible
    @recipes = Recipe.all.find_all{
      |recipe| recipe.foods.all? {
        |food| current_user.foods.include? food
      }
    }
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_path
  end


  private
    def recipe_params
      params.require(:recipe).permit(:img_url,:name, :instructions, :servings)
    end

end
