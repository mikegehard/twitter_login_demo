class WelcomeController < ApplicationController

  def index
    message = session[:message]
    puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^#{message}"
    @message = message
  end
end