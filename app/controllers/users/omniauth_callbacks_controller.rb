class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def all
    auth = request.env['omniauth.auth']
    @identity = Identity.find_with_omniauth(auth)

    if @identity
      # found identity so login the user
      sign_in_and_redirect @identity.user, :event => :authentication
    else
      # If no identity was found, get current_user or do lookup
      @user = current_user || User.find_by(email: auth['info']['email'])

      if @user
        # create a brand new identity for the user
        @user.identities << Identity.create_with_omniauth(auth)
        @user.save
        # redirect_to root_url, notice: "New identity added"
        sign_in_and_redirect @user, :event => :authentication
      else
        # users arent allowed to register themselves to redirect to login
        redirect_to root_url, notice: "User not allowed"
      end

    end
  end

  alias_method :github, :all

end




