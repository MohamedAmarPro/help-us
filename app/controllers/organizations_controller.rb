class OrganizationsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_organization!
  def index
    @organization = current_organization
  end

  def show
    set_organization
  end

  # def new
  #   @organization = Organization.new
  # end

  # def create
  #   @organization = Organization.new(params_organizations)
  #   if @organization.save
  #     redirect_to organizations_path
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  def edit
    set_organization
  end

  def update
    set_organization
    # @subcategory = SubCategory.find(params[:organization][:sub_category])
    # @organization.subcategory = @subcategory
    @organization.update(params_organizations)
    redirect_to organizations_path
  end

  def destroy
    set_organization
    @organization.destroy
    redirect_to organizations_path, status: :see_other
  end

  private

  def set_organization
    @organization = Organization.find(params[:id])
  end

  def params_organizations
    params.require(:organization).permit(:name, :description, :sub_category_id, :photo)
  end
end
