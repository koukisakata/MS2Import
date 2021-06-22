class TastesController < ApplicationController
  def index
    @tastes = Taste.all
  end
  def destroy
    Taste.destroy_all
    redirect_to tastes_path
  end
  def import
    Taste.import(params[:file])
    redirect_to tastes_url
  end
end
