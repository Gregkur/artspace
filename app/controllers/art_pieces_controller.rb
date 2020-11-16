class ArtPiecesController < ApplicationController
  def show
    @art_piece = ArtPiece.find(params[:id])
    @booking = Booking.new
  end
end
