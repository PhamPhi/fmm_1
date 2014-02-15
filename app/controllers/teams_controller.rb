class TeamsController < ApplicationController
	def index
    @teams = Team.paginate page: params[:page], per_page: 5
  end

  def show
    @team = Team.find params[:id]
  end

end
