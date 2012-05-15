require 'spec_helper'

describe TestController do
  context "without authentication" do

    it "should redirect to login" do
      get :index
      response.status.should==302
    end
  end

  context "with incorrect authentication" do

    it "should redirect to login" do
      get :index,:auth_token=>"fdasfdasfdsa"
      response.status.should==302
    end
  end

  context "with authentication" do

      let(:user){User.create(:email=>"foo@bar.com",:password=>"blahblah")}

      it "should authenticate with a token param" do
        get :index,:auth_token=>user.authentication_token
        response.should be_success
      end

      it "should authenticate with a token header" do
        Devise.setup do |config|
          config.non_token_auth_value="token"
        end
        auth_header="Basic #{ActiveSupport::Base64.encode64("#{user.authentication_token}:token")}"
        @request.env["HTTP_AUTHORIZATION"]=auth_header
        get :index
        response.should be_success
      end

      it "should authenticate with a token in the password field" do
        auth_header="Basic #{ActiveSupport::Base64.encode64("X:#{user.authentication_token}")}"
        @request.env["HTTP_AUTHORIZATION"]=auth_header
        get :index
        response.should be_success
      end
    end
end
