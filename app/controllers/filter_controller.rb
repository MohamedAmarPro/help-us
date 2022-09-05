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
    unless params[:filter_categories]
      redirect_to filter_path, alert: 'Need to select 1 or more categories'
    else
    cookies[:categories] = params[:filter_categories][:categories].join(",")
    redirect_to filter_path
    end
  end

  def sub_categories
    unless params[:filter_sub_categories]
      redirect_to filter_path, alert: 'Need to select 1 or more subcategories'
    else
      cookies[:sub_categories] = params[:filter_sub_categories][:sub_categories].join(",")
      redirect_to filter_path
    end
  end

  def organizations
    unless params[:filter_organizations]
      redirect_to filter_path, alert: 'Need to select 1 or more organizations'
    else
      cookies[:organizations] = params[:filter_organizations][:organizations].join(",")
      redirect_to filter_path
    end
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