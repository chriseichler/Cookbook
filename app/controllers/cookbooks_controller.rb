class CookbooksController < ApplicationController
  def index
    @cookbooks = Cookbook.all
    # render index
  end
  def create
    cookbook = Cookbook.new(params['cookbook']) #params cookbook because we are dealing with the forms fields people enter
    if cookbook.save
      redirect_to cookbooks_path
    else
      redirect_to new_cookbook_path
    end
    # # Cookbook.create(:title => 'Cooking with fish', :cuisine => 'fishy', :descripion => 'A book about...')
    # redirect_to cookbooks_path
    #  # render :create
  end
  def new
    @cookbook = Cookbook.new
    @recipes = Recipe.all
    # render :new
  end
  def edit
    @cookbook = Cookbook.find(params[:id])
    @recipes = Recipe.all

    # render :edit
  end
  def show
    @cookbook = Cookbook.find(params[:id])   #@cookbook instance variable here just needs to be consistent when referneced. Can be anything.
    # render :show           capitalized Cookbook. is not arbitrary. Must be exact class name.
  end
  def update
    cookbook = Cookbook.find(params['id'])  # this is params id because it's the id in the url--which book are we talking about?
    if cookbook.update_attributes(params["cookbook"])  #yes, an action is happening in the condition
      redirect_to cookbooks_path
    else
      # We need to give feedback if unsuccessful
      redirect_to edit_cookbook_path
    end
    # render :update
  end
  def destroy
    Cookbook.find(params[:id]).delete  #no instance variable required--we are throwing it away
    redirect_to cookbooks_path
    # render :destroy
  end
end
