class DrapesController < ApplicationController
  def index
    @drape = Drape.all
    @drapes = Drape.all.page(params[:page]).per(200)
  end
  def destroy
    Drape.destroy_all
    redirect_to drapes_path
  end
  def import
    # fileはtmpに自動で一時保存される
    Drape.import(params[:file])
    redirect_to drapes_url
  end
end
