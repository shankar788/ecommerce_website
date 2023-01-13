class UserOrdersController < ApplicationController
  def index
    render json: UserOrder.all
  end

  def show

  end

  def order_by_product
    @product = Product.find(params[:product_id])
    @user = UserLogin.find(params[:user_login_id])
    UserOrder.update(user_id:@user,product_id:@product)
  end

  def order_by_cart
    @cart = ProCart.find(params[:cart_id])
    ProCart.update(cart_id:@cart)
  end  
  end   
  def destory
    @order = UserOrder.find(params[:id])
    render json:{message:"order deleted"} if @order.destory
  end
end
