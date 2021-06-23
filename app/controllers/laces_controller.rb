class LacesController < ApplicationController
  def index
    @lace = Lace.all
    @laces = Lace.all.page(params[:page]).per(200)
  end
  def destroy
    Lace.destroy_all
    redirect_to laces_path
  end
  def import
    # fileはtmpに自動で一時保存される
    Lace.import(params[:file])
    redirect_to laces_url
  end
end
