class BookingsController < ApplicationController
  def create
    @art_piece = ArtPiece.find(params[:art_piece_id])
    ## Setting availability to false
    @art_piece.availability = false
    @booking = Booking.new(booking_params)
    @total_days = (@booking.check_out - @booking.check_in).to_i
    @price = calculate_price
    @booking.price = @price
    @booking.user = current_user
    @booking.art_piece = @art_piece
    if @booking.save
      ## Saving the new availability
      @art_piece.save
      redirect_to art_piece_path(@art_piece, booking_created: true)
    else
      @booking_created = false
      render "art_pieces/show"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @art_piece = ArtPiece.find(params[:id])
    @booking.art_piece = @art_piece
    @booking.destroy
    redirect_to page_path(current_user)
  end

  def show
    @user = current_user
    @booking = Booking.find(params[:id])
    @booking.user = current_user
  end


  private

  def calculate_price
    (@art_piece.price * @total_days).to_f / 30
  end

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end
end
