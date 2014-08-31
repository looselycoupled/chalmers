class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    p env["omniauth.auth"]
    @user = User.find_for_facebook_oauth(env["omniauth.auth"], current_user)

    if @user.persisted?
      # flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.facebook_data"] = env["omniauth.auth"]
      redirect_to root_url
    end
  end

  alias_method :facebook, :all
  alias_method :facebook_access_token, :all
end
