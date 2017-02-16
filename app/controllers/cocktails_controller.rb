class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Coktail.new
  end

  def create
  end


  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

end
