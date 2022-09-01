class FilterController < ApplicationController
  def show
    @categories = Category.all

    if cookies[:categories]
      categories_id = cookies[:categories].split(",")
      @categories = Category.where(id: categories_id)
    end
  end

  def categories
    cookies[:categories] = params[:filter_categories][:categories].join(",")
    redirect_to filter_path
  end

  def sub_categories
  cookies[:sub_categories] = params[:filter_sub_categories][:sub_categories].join(",")
  redirect_to filter_path
  end
end


# ["environment", "social"]

# cookies[:categories] = [1, 4, 7]

 # if cookies[:categories]
    #   @categories = Category.where(name: cookies[:categories])
    # end
