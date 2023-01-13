class ProCartsController < ApplicationController
  before_action :set_cart,only: %i[quantity_increment quantity_decrement destory]


  def index
    render json: ProCart.all
  end

  def quantity_increment 
    b = @cart.quantity+1
    render json:{message:"quantity increased"} if @cart.update(quantity:b) 
        
  end

  def quantity_decrement
    if @cart.quantity > 1
      render json:{message:"decremented"} if @cart.update(quantity:@cart.quantity-1) 
    end  
  end

  def destroy
    render json:{message:"cart deleted"} if @cart.destory
  end  

  def add_to_cart
    ProCart.create(product_id:params[:product_id],user_login_id:params[:user_login_id])
    render json:{message:"successfull"}
  end

  def user_cart_details
    @user = UserLogin.find(params[:user_login_id])
  end

  private
  def set_cart
    @cart = ProCart.find(params[:cart_id])
  end 

  def cart_params
    params.permit(:quantity,:user_login_id,:product_id)
  end  
 
end
