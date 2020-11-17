class PagesController < ApplicationController
  def home
    @art_piece = ArtPiece.last
  end
end
