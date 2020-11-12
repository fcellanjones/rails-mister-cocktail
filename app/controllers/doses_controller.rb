class DosesController < ApplicationController
  def create
    @dose = Dose.new(strong_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail.id)
    else
      render 'cocktails/show'
    end
  end

  private

  def strong_params
    params.require(:dose).permit(:description)
  end
end
