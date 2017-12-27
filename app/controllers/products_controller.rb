class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def add
    @product = Product.find(params[:id])
    current_cart = session[:cart] || []
    current_cart << @item.id
    session[:cart] = current_cart
    redirect_to root
  end

end
