class MagnifiersController < ApplicationController

  def show
    @magnifier = Magnifier.find(params[:id])
    @review = Review.new
  end

end
