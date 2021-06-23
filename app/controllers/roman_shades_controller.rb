class RomanShadesController < ApplicationController
  def index
    @roman_shade = RomanShade.all
    @roman_shades = RomanShade.all.page(params[:page]).per(200)
  end
  def destroy
    RomanShade.destroy_all
    redirect_to roman_shades_path
  end
  def import
    RomanShade.import(params[:file])
    redirect_to roman_shades_url
  end
end
