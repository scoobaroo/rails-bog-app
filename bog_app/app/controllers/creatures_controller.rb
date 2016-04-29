class CreaturesController < ApplicationController
  def index
   # get all creatures from db and save to instance variable
     @creatures = Creature.all
     # render the index view (it has access to instance variable)
     render :index
  end
  def new
     @creature = Creature.new
     render :new
  end
  def create
    creature_params = params.require(:creature).permit(:name, :description)
    creature = Creature.new(creature_params)
    if creature.save
      redirect_to creatures_path(creature)
    end
  end
  def show
    creature_id = params[:id]
    @creature = Creature.find_by_id(creature_id)
    render :show
  end
  def edit
  # get the creature id from the url params
    creature_id = params[:id]
    # use `creature_id` to find the creature in the database
    # and save it to an instance variable
    @creature = Creature.find_by_id(creature_id)
    # render the edit view (it has access to instance variable)
    render :edit
  end
  def update
    creature_id = params[:id]
    creature = Creature.find_by_id(creature_id)
    creature_params = params.require(:creature).permit(:name, :description)
    creature.update_attributes(creature_params)
    redirect_to creature_path(creature)
  end
end
