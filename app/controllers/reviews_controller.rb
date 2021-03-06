class ReviewsController < ApplicationController

  def create
    puts params
    @review = Review.create(
      description: params[:review][:description],
      user: current_user,
      rating:params[:review][:rating],
      product_id:params[:product_id]
    )
    redirect_to product_path(params[:product_id]) #redirect back to same page
  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy
    redirect_to product_path(params[:product_id])
  end

end
