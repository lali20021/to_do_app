class ItemsController < ApplicationController

  def index
    #@items = current_user.items
  end

  def show
    @item = Item.find( params[:id] )
  end

  def new
    @items = Item.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end
