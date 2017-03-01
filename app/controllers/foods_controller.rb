class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
    @recipes = @food.recipes
  end

  def new
    @food = Food.new
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    @food.update(food_params)
    redirect_to food_path @food
  end

  def create
    @food = Food.create!(food_params)
    redirect_to food_path @food
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to root_path
  end

  def add_supply
    @food = Food.find(params[:id])
    @food.supplies.create(user: current_user)
    redirect_to :back
  end

  def remove_supply
    Supply.find_by(user: current_user, food_id: params[:id]).destroy
    redirect_to :back
  end

  private
  def food_params
    params.require(:food).permit(:img_url,:name,:fat,:protein,:carbohydrates,:calories,:vegetarian,:gluten_free,:serving_size,:unit_of_measure)
  end
end
