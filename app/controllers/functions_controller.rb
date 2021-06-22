class FunctionsController < ApplicationController
  def index
    @functions = Function.all
  end
  def destroy
    Function.destroy_all
    redirect_to functions_path
  end
  def import
    # fileはtmpに自動で一時保存される
    Function.import(params[:file])
    redirect_to functions_url
  end
end
