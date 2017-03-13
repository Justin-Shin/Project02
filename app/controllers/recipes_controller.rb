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

  # this is a very awesome feature. nice and simple implementation
  def possible
    # edited for style.
    @recipes = Recipe.all.find_all do |recipe|
       recipe.foods.all? do |food|
          current_user.foods.include? food
      end
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_path
  end

  def favorites
    @recipes = current_user.recipes.find_all do |recipe|
       recipe.foods.all? do |food|
         current_user.foods.include? food
      end
    end
    @recipes_no = current_user.recipes.find_all  do |recipe|
      @recipes.exclude? recipe
    end
    puts @recipes, @recipes_no
  end

  # Would just add a favorites_controller with just create & destory methods
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
