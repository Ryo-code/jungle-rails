class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with ENV['name'], ENV['password']

  def index
    puts flash[:test]
    @categories = Category.order(id: :desc).all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  def destroy
    @category = Category.find params[:id]
    @category.destroy
    redirect_to [:admin, :categories], flash: {test: 'Category deleted!'}
  end


  private
  def category_params
    params.require(:category).permit(
      :name
    )
  end

end
