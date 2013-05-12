class TopController < ApplicationController
  def index
  	@categories = Category.find(:all)
  end
end
