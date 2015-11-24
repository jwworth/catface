class CatsController < ApplicationController
  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.create(cat_params)
    redirect_to 
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :color, :tail_length, :personality,
      :outdoor, :occupation, :owner_id)
  end
end
