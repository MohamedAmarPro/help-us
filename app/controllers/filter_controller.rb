class FilterController < ApplicationController
  def show
    @categories = Category.all

    if cookies[:categories] && cookies[:sub_categories].nil?
      categories_id = cookies[:categories].split(",")
      @categories = Category.where(id: categories_id)
    end

    if cookies[:sub_categories] && cookies[:categories]
      sub_categories_id = cookies[:sub_categories].split(",")
      @sub_categories = SubCategory.where(id: sub_categories_id)
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

  def organizations
    cookies[:organizations] = params[:filter_organizations][:organizations].join(",")
    redirect_to filter_path
  end

  def reset
    if cookies[:organizations]
      cookies.delete(:organizations)     
    elsif cookies[:sub_categories]
      cookies.delete(:sub_categories)      
    elsif cookies[:categories]
      cookies.delete(:categories)
    end
    redirect_to filter_path
  end


end


# ["environment", "social"]

# cookies[:categories] = [1, 4, 7]

 # if cookies[:categories]
    #   @categories = Category.where(name: cookies[:categories])
    # end
"1&4&7"
"1,4,7"