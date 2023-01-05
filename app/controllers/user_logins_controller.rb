class UserLoginsController < ApplicationController
  skip_before_action :verify_authenticity_token
  include JsonWebToken
  def index
    demo
  end

  def create
    @user = UserLogin.new(user_params)
    if @user.save
      render json:{message: "success"}
    else
      render json: { errors: @user.errors.full_messages }
    end
end

  def show
  end

  def update
  end

  def destory
  end

  private 
  def user_params
    params.permit(:name,:email,:password)
  end  
end
