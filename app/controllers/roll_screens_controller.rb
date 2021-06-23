class RollScreensController < ApplicationController
  def index
    @roll_screen = RollScreen.all
    @roll_screens = RollScreen.all.page(params[:page]).per(200)
  end
  def destroy
    RollScreen.destroy_all
    redirect_to roll_screens_path
  end
  def import
    RollScreen.import(params[:file])
    redirect_to roll_screens_url
  end
end
