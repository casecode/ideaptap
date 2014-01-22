class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login

  def after_sign_in_path_for(user)
    user_path(current_user)
  end

  def after_sign_up_path_for(user)
    user_path(current_user)
  end

  private
 
  def require_login
    unless user_signed_in?
      redirect_to root_path # halts request cycle
    end
  end
end
