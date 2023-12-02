class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :must_be_admin, only: :edit

  def index
    @products = Product.all
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    # Find the product to be updated
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to products_path, notice: 'Product updated successfully.'
    else
      render :edit
    end
  end

   def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path, notice: 'Product deleted successfully.'
  end


  private

  def must_be_admin
    # validate admin
  	unless current_user && current_user.admin?
      redirect_to root_path, notice: "Normal user can't modify product details"
    end
  end

  def product_params
    params.require(:product).permit(:name, :description, :images, :launch_date, :price, :currency, :active)
  end
end
