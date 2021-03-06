class ArtPiecesController < ApplicationController
  ## Added attr_writer
  attr_writer :availability

  def show
    @art_piece = ArtPiece.find(params[:id])
    @booking = Booking.new
    @booking_created = false
    @booking_created = true if params[:booking_created]
  end

  def index
    @art_pieces = ArtPiece.all
    @art_pieces = ArtPiece.search(params[:query]) if params[:query].present?
  end

  def new
    @art_piece = ArtPiece.new
  end
  
  def destroy
    @art_piece = ArtPiece.find(params[:id])
    @art_piece.destroy
    redirect_to page_path(current_user)
  end
  
  def update
    @art_piece = ArtPiece.find(params[:id])
    @art_piece.update(art_piece_params)
    redirect_to page_path(current_user)
  end

  def create
    @art_piece = ArtPiece.new(art_piece_params)
    @art_piece.user = current_user
    if @art_piece.save
      redirect_to art_piece_path(@art_piece), notice: "Congratulations, your art piece has been added!" # redirects to the show page
    else
      @art_piece_created = false
      render :new
    end

  end

  private

  def art_piece_params # params for security reasons
    params.require(:art_piece).permit(:title, :description, :price, :artist, :availability, photos: []) # add photos: [] if user can upload a photo too
  end

end
