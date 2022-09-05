class CategoriesController < ApplicationController
  before_action :require_admin, except: [:index, :show]
  
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Category created successfully"
      redirect_to @category
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @categories = Category.paginate(page: params[:page], per_page: 10)
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def require_admin
    if !(logged_in? && current_user.admin?)
      flash[:alert] = "You do not have administrative privileges"
      redirect_to categories_path
    end
  end

end