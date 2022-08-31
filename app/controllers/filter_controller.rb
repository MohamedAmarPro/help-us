class FilterController < ApplicationController
  def show
    @categories = Category.all
  end

  def categories
    cookies[:categories] = params[:filter_categories][:toto]
  end

  def sub_categories
  end

end


# ["environment", "social"]

# cookies[:categories] = [1, 4, 7]

 # if cookies[:categories]
    #   @categories = Category.where(name: cookies[:categories])
    # end
