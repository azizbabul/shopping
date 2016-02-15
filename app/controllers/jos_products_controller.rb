class JosProductsController < ApplicationController
  #require 'my_class_name'
  
  def index
    
     @product=JosProduct.new
  end
  
  def push_product
    @product=JosProduct.new(product_params)
    if @product.save
      flash[:notice] ="product created"
     redirect_to(:action=>'view_products')
    else
      render 'index'
    end 
    def view_products
      #render text: "product created"
    end
    
  end
  
  private
  def product_params
      params.require(:jos_product).permit(:code, :branch, :category_id, :model,:purchase_price,:code_price,
        :quantity,:tags,:memo,:first_pin,:last_pin)
    end
end
  

