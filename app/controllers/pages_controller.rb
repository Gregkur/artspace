class PagesController < ApplicationController
  def home
    @art_piece = ArtPiece.last
  end

  def show
    @user = current_user
  end
  
end
