class ItemsController < ApplicationController


  def index
    @items = current_user.items
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.create(params[:item].permit(:todo))
    @item.user_id = current_user.id if current_user

    if @item.save
      redirect_to items_path, notice: 'Item was successfully created.'
    else
      render 'new'
    end
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(params[:item].permit(:todo))
      redirect_to items_path, notice: 'Item was successfully updated'
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path, notice: 'Item was successfully deleted'
  end
end
