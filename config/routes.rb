Rails.application.routes.draw do

  devise_for :users, :skip => [:registrations], :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
  }

  devise_scope :user do
    authenticated :user do
      root :to => 'pages#dashboard'
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

end
