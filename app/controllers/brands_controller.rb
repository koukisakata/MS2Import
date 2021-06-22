class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end
  def destroy
    Brand.destroy_all
    redirect_to brands_path
  end
  def import
    # fileはtmpに自動で一時保存される
    Brand.import(params[:file])
    redirect_to brands_url
  end
end
