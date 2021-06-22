class RomanShadesController < ApplicationController
  def index
    @roman_shades = RomanShade.all
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
