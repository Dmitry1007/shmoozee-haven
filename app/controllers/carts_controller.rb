class CartsController < ApplicationController
  def show
    @items = {}
    session[:cart].each do |item_id, quantity|
      @items[Item.find(item_id.to_i)] = quantity
    end
  end

  def delete
    session[:cart].clear
    redirect_to :back
  end

  def update
    initial_quantity = @cart.contents[params[:item_id]]
    new_quantity     = params[:quantity].to_i
    item_id          = params[:item_id]

    @cart.update_item_quantity(item_id, initial_quantity, new_quantity)

    redirect_to :back
  end
end