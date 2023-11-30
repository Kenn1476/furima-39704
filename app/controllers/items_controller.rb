class ItemsController < ApplicationController
  # before_action :move_to_index, except: [:index, :show]

  def index
    # @items = Item.all
  end

#   def new
#     @item = Item.new
#   end

#   def create
#     Item.create(item_params)
#     redirect_to '/'
#   end

# private

# def item_params
#   params.require(:item).permit(:item_name, :description, :category, :condition, :price, :item_image)
# end

# def move_to_index
#   unless user_signed_in?
#     redirect_to action: :index
#   end
# end

end
