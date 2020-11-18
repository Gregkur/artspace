class BookingsController < ApplicationController
  def create
    @art_piece = ArtPiece.find(params[:art_piece_id])
    @booking = Booking.new(booking_params)
    @total_days = (@booking.check_out - @booking.check_in).to_i
    @price = calculate_price
    @booking.price = @price
    @booking.user = current_user
    @booking.art_piece = @art_piece
    if @booking.save
      redirect_to controller: 'art_pieces', action: 'show', id: @art_piece.id, booking_created: true
    else
      @booking_created = false
      render "art_pieces/show"
    end
  end

  private

  def calculate_price
    (@art_piece.price * @total_days).to_f / 30
  end

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end
end
