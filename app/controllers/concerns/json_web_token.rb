require "jwt"
module JsonWebToken
    extend ActiveSupport::Concern 
    included do
        SECRET_KEY = Rails.application.secret_key_base
        def encode_token(payload)
            JWT.encode(payload,SECRET_KEY)
        end
        def decode(token)
            decoded = JWT.decode(token, SECRET_KEY)[0]
            HashWithIndifferentAccess.new decoded
        end
    
    end

end