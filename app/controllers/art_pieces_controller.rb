class ArtPiecesController < ApplicationController
  def index
    @art_pieces = ArtPiece.all
  end
end
