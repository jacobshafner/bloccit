class AdvertisementsController < ApplicationController
  def index
  	@ads = Advertisement.all
  end

  def show
  	@advertisement = Advertisement.find(params[:id])
  end

  def new
  end

  def create
  end
end
