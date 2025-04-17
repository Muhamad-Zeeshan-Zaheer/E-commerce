class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy]
  def index
    @products=Product.all
  end
  def new
    @product=Product.new
  end
  def create
    @product=Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: "Product created successfully"
    else
      render :new
    end
  end

  def edit
  end
  def update
    @product=Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path, notice: "Product updated successfully"
    else
      render :edit
    end
  end
  def destroy
    @product.destroy
    redirect_to products_path, notice: "Product deleted successfully"
  end
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end

  def set_product
    @product=Product.find(params[:id])
  end
end
