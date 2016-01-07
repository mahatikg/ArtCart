class ArtPiecesController < ApplicationController
  #CONTROLLER THAT IS BASICALLY A GALLERY VIEW OF ALL THE PIECES OF ART
  def index
    @artpiece = Artpice.all
  end

  def new
    @artpiece = Artpiece.new
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
