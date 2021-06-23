class WallpapersController < ApplicationController
  def index
    @wallpaper = Wallpaper.all
    @wallpapers = Wallpaper.all.page(params[:page]).per(200)
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
