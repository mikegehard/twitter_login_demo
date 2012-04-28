class SessionsController < ApplicationController
  def create
    user = User.find_or_create_from_twitter_data(auth_hash)
    # do something with the user to signify "logged in"
    # this may be storing them in the current user varaible like so:
    #self.current_user = user
    # this method would have to be defined on ApplicationController
    redirect_to root_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end