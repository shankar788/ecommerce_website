class ApplicationController < ActionController::Base
    before_action :authorize,except: %i[login]
    include JsonWebToken
    SECRET_KEY = Rails.application.secret_key_base

    private

    def decode_token
       auth = request.headers['Authorization']
       if auth
        token = auth.split(' ')[1]
        begin
            JWT.decode(token,SECRET_KEY,true,algorithm: 'HS256')
        rescue JWT::DecodeError
            nil
        end
       end 
    end    

    def authorized_user
        decoded_token = decode_token()
        if decoded_token
            user = decoded_token[0]['user_login']
            @user = UserLogin.find_by(id:user)
        end    
    end  
    
    def authorize
        render json: {message: "You have to log in"},status: :unauthorized unless authorized_user
    end    
end
