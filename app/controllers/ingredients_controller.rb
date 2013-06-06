class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def create
    ingredient = Ingredient.new(params[:ingredient])
    if ingredient.save
      redirect_to ingredients_path
    else
      redirect_to new_ingredient_path
    end
  end

  def new
    @ingredient = Ingredient.new
    @recipes = Recipe.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
    @recipes = Recipe.all

  end

  def update
    ingredient = Ingredient.find(params[:id])
    if ingredient.update_attributes(params['ingredient'])
      redirect_to ingredients_path
    else
      redirect_to edit_ingredient_path
    end

  end

  def destroy
    Ingredient.find(params[:id]).delete
    redirect_to ingredients_path
  end

end
