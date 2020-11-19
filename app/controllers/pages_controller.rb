class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @art_piece = ArtPiece.last
  end

  def show
    @user = User.find(params[:id])
    @booking = Booking.new
    @booking.user = @user
  end
  
end
