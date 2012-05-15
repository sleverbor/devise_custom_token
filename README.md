devise_custom_token
===================

Devise strategy for customizing the authentication token used in basic authentication header.  With this strategy you can set the non-password portion of the header to an arbitrary string ("token" by default).  This can be placed in any order, e.g. curl -utoken:mypassword http://someplace or curl -umypassword:token http://someplace

To use: Add to your gemfile (gem devise_custom_token) and in your devise initializer require 'devise/devise_custom_token'

To configure the non-password string set Devise::non_token_auth_value in your devise initializer.
