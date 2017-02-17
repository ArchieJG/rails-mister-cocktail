class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new  # For the new dose form
  end

  def create
    cocktail = Cocktail.new(cocktail_params)
    if cocktail.save
      redirect_to cocktail_path(cocktail)
    else
      render :new
    end
  end

  def destroy
    Cocktail.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

# @cocktail.destroy
#  respond_to do |format|
#    format.html { redirect_to cocktails_url, notice: 'Cocktail was successfully destroyed.' }
#    format.json { head :no_content }
# end
