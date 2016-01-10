class ArtPiecesController < ApplicationController
  #CONTROLLER THAT IS BASICALLY A GALLERY VIEW OF ALL THE PIECES OF ART
  def index
    @artpiece = Artpiece.all
  end
  
end
  # def show
  # end
  #
  # private
  #
  #   def artpiece_params
  #     params.require(:artpiece).permit( :title, :style)
  #   end
