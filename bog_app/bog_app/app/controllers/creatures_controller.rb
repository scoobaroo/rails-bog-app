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
  # show the edit creature form
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
    # get the creature id from the url params
    creature_id = params[:id]

    # use `creature_id` to find the creature in the database
    # and save it to an instance variable
    creature = Creature.find_by_id(creature_id)

    # whitelist params and save them to a variable
    creature_params = params.require(:creature).permit(:name, :description)

    # update the creature
    creature.update_attributes(creature_params)

    # redirect to show page for the updated creature
    redirect_to creature_path(creature)
    # redirect_to creature_path(creature) is equivalent to:
    # redirect_to "/creatures/#{creature.id}"
  end
  # delete a creature from the database
  def destroy
      # get the creature id from the url params
    creature_id = params[:id]

    # use `creature_id` to find the creature in the database
    # and save it to an instance variable
    creature = Creature.find_by_id(creature_id)

    # destroy the creature
    creature.destroy

    # redirect to creatures index
    redirect_to creatures_path
  # redirect_to creatures_path is equivalent to:
  # redirect_to "/creatures"
  end
end
