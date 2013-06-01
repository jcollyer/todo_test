class TwitterController < ApplicationController
  def callback
    user = User.from_omniauth(omniauth)
    self.current_user = user

    redirect_to root_path
  end
end
