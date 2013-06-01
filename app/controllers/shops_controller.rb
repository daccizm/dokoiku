class ShopsController < ApplicationController
  def index
    # genre = Genre.find()
    # @shops = genre.shops
    @shops = Shop.find(:all)
    respond_to do |format|
      format.js   { render action: "list.js.erb" }
    end
  end

end
