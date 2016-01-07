class WelcomeController < ApplicationController

  def index
    @artpieces = params[:q] :Artpiece.all
  end

end
