class AuthenticationController < ApplicationController
  skip_before_action :verify_authenticity_token
  include JsonWebToken
  def login
    @user = UserLogin.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password ])
      token = encode_token({user_login:@user.id})
      puts token
      render json: {user: @user,token:token},status: :ok 
    else
      render json: {error: "got an error"}  
    end  
  end
end
