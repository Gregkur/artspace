class ArtPiecesController < ApplicationController
  def show
    @art_piece = ArtPiece.find(params[:id])
    @booking = Booking.new
    @booking_created = false
    @booking_created = true if params[:booking_created]
  end

  def index
    @art_pieces = ArtPiece.all
  end

  def new
    @art_piece = ArtPiece.new
  end

  def create
    @art_piece = ArtPiece.new(art_piece_params)
    @art_piece.user = current_user
    # raise
    if @art_piece.save
      redirect_to art_piece_path(@art_piece) # redirects to the show page
    else
      render :new
    end
  end

  private

  def art_piece_params # params for security reasons
    params.require(:art_piece).permit(:title, :description, :price, photos: []) # add photos: [] if user can upload a photo too
  end
end
