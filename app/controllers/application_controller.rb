class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  layout :resolve_layout

  private

  def resolve_layout
    case controller_name
    when "sessions"
      "public"
    else
      "private"
    end
  end

end
