class PricesController < ApplicationController
  def index
    @prices = Price.all
  end
  def destroy
    Price.destroy_all
    redirect_to prices_path
  end
  def import
    # fileはtmpに自動で一時保存される
    Price.import(params[:file])
    redirect_to prices_url
  end
end
