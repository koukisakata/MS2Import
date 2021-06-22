class LacesController < ApplicationController
  def index
    @laces = Lace.all
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
