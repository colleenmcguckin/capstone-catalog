class CapstonesController < ApplicationController
  
  def index
    @capstones = Unirest.get(url).body
  end

  def show
    @capstone = Unirest.find(params[:id])
  end

end
