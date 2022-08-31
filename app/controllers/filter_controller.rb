class FilterController < ApplicationController
  def show
    @categories = Category.all
    @sub_categories = SubCategory.all
  end

  def categories
  cookies[:categories] = params[:filter_categories][:categories]
  redirect_to filter_path
  end

  def sub_categories
  end
end


# ["environment", "social"]

# cookies[:categories] = [1, 4, 7]

 # if cookies[:categories]
    #   @categories = Category.where(name: cookies[:categories])
    # end
