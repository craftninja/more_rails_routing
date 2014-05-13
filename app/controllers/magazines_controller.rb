class MagazinesController < ApplicationController
  def show
    @magazine = Magazine.find(params[:id])
  end

  def mark_as_read
    @magazine = Magazine.find(params[:id])
    @magazine.update_attributes(read: true)
    redirect_to magazine_path(@magazine)
  end

  def search
    @magazines = Magazine.search(params[:q])
  end
end