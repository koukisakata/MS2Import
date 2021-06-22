class WallpapersController < ApplicationController
  def index
    @wallpapers = Wallpaper.all
  end
  def destroy
    Wallpaper.destroy_all
    redirect_to wallpapers_path
  end
  def import
    Wallpaper.import(params[:file])
    redirect_to wallpapers_url
  end
end
