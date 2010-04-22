class SearchController < ApplicationController
  def index
    @bedrijfs = Bedrijf.all
  end

  def search
    @bedrijfs = Bedrijf.search(params[:search])
  end

  def show
    @bedrijf = Bedrijf.find(params[:id])
  end

end
