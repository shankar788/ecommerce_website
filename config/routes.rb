Rails.application.routes.draw do
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
