class UsersController < ApplicationController

  def profile
    @email = current_user.email
    @nick = current_user.nick
  end
  
end