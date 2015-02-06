class StoreController < ApplicationController
  include CurrentCart

  def index
  	@products = Product.order(:title)
  	@counter = set_counter
  	@shown_message = "You've been here #{@counter} times" if @counter > 5
  end

end
