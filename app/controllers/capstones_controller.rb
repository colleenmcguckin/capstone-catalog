class CapstonesController < ApplicationController
  
  def index
    @capstones = Unirest.get("http://localhost:3000/student.json").body
  end

  def show
    @capstone = Unirest.find(params[:id])
  end

end
