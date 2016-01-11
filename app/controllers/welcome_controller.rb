class WelcomeController < ApplicationController

  def index
    #display all artpieces here
    @artpieces = Artpiece.all
  end

  def about
  end

end
