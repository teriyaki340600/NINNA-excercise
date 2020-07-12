class MagnifiersController < ApplicationController

  def show
    @magnifier = Magnifier.find(params[:id])
    @review = Review.new
  end

  def index
    magnifier_maker = MagnifierMaker.find(params[:magnifier_maker_id])
    render json: magnifier_maker.cameras.select(:id, :name)
  end

end
