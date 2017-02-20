class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @new_dose = Dose.new
    @ingredients = Ingredient.order(:name)
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

end
