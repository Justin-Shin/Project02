class RecipesController < ApplicationController
  # welcome page for users that are not logged in
  def welcome
    if current_user
      # if someone is logged in, take them to the list of foods
      redirect_to foods_path
    end
  end

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
  def favorites
    @recipes = current_user.recipes.find_all{
      |recipe| recipe.foods.all? {
        |food| current_user.foods.include? food
      }
    }
    @recipes_no = current_user.recipes.find_all {
      |recipe| @recipes.exclude? recipe
    }
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_path
  end

  def add_favorite
    @recipe = Recipe.find(params[:id])
    @recipe.favorites.create(user: current_user)
    redirect_to :back
  end

  def remove_favorite
    Favorite.find_by(user: current_user, recipe_id: params[:id]).destroy
    redirect_to :back
  end


  private
    def recipe_params
      params.require(:recipe).permit(:img_url,:name, :instructions, :servings)
    end

end
