class CreaturesController < ApplicationController
  def index
    @creatures=Creature.all
    render :index
  end
  def new
    @creature=Creature.new
    render :new
  end
  def create
    creature_params= params.require(:creature).permit(:name,:description)
    @creature=Creature.create(creature_params)
    redirect_to creature_path(@creature)
  end
  def show
    @creature=Creature.find(params[:id])
    render :show
  end
end
