class PositionsController < ApplicationController
  def index
    @positions = Position.paginate page: params[:page], per_page: 3 
  end
  
  def show
    @position = Position.find params[:id]
  end
end