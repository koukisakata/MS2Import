class DrapesController < ApplicationController
  def index
    @drapes = Drape.all
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
