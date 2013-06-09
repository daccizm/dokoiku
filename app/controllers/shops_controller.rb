class ShopsController < ApplicationController
  def index

    @shops = Shop.find(:all)
    
    respond_to do |format|
      if params[:menu][:situation] == "1" || params[:menu][:situation] == "4"
        format.js   { render action: "list.js.erb" }
      else
        format.js   { render action: "news.js.erb" }
      end
    end
  end

end
