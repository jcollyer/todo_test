class TwitterController < ApplicationController

  def callback
    user = User.from_omniauth(omniauth)
    self.current_user = user

    redirect_to session[:return_to] || lists_path
  end

  # Public: Signs user out of todo.
  def signout
    self.current_user = nil

    redirect_to root_path
  end
end
