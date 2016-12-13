class ReviewsController < ApplicationController

  def create
    @reviews = Review.all.order(created_at: :desc)
  end

  # def show
  #   @review = Review.find params[:id]
  # end

end
