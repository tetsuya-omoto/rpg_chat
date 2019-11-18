class BattlesController < ApplicationController
  def index
    @battles = Battle.all
    @battle = Battle.new
    
  end
  def new
    @battle = Battle.new
  end
  def create
    Battle.create(battle_params)
    @battle = Battle.new(battle_params)
    respond_to do |format|
    format.html { redirect_to :root }
    format.json 
    end
  end
  def search
    @battles = Battle.search(params[:keyword])
  end
  private
  def battle_params
    params.require(:battle).permit(:text, :answer)
  end
end