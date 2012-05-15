require 'devise'
require 'devise/strategies/token_authenticatable'

module Devise
  mattr_accessor :non_token_auth_value
  @@non_token_auth_value='token'

  class Strategies::TokenAuthenticatable
    def authenticate!
      auth=valid_password? ? authentication_hash.merge({authentication_keys.first=>self.password}) : authentication_hash
      resource = mapping.to.find_for_token_authentication(auth)
      if validate(resource)
        resource.after_token_authentication
        success!(resource)
      else
        fail(:invalid_token)
      end
    end
    private

    def valid_password?
      password.present? && password != Devise.non_token_auth_value
    end
  end
end
