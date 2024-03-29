class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # signed_in ヘルパーメソッドを追加
  helper_method :signed_in?

  private
  def signed_in?
    true if session[:oauth_token]
  end
end
