class AdsController < ApplicationController
  def index
    @magazine = Magazine.find(params[:magazine_id])
  end
end