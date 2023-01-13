Rails.application.routes.draw do
  resources :user_orders
   
  get "order/product/:product_id/:user_login_id", to: "user_orders#order_by_product"
  get "order/cart/:cart_id", to: "user_orders#order_by_cart"

  get "pro_carts/quantity_increment/:cart_id",to: "pro_carts#quantity_increment"
  get "pro_carts/quantity_decrement/:cart_id",to: "pro_carts#quantity_decrement"
  get "pro_carts/index",to: "pro_carts#index"
  delete "pro_carts/destroy/:cart_id",to: "pro_carts#destory" 
  get "pro_carts/add_to_cart/:product_id/:user_login_id",to: "pro_carts#add_to_cart"
  get "pro_carts/user_cart_details/:user_login_id" ,to:"prod_carts#user_cart_details"
 
  resources :categories
  resources :products
  resources :user_logins
  post "/login", to: "authentication#login"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
