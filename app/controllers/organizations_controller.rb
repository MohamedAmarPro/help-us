class OrganizationsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_organization!
  def index
    @organization = current_organization
  end

  def show
    set_organization
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(params_organizations)
    if @organization.save
      redirect_to organizations_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    set_organization
  end

  def update
    @organization.update(params_organizations)
    redirect_to current_organization
  end

  private

  def set_organization
    @organization = Organization.find(params[:id])
  end

  def params_organizations
    params.require(:organization).permit(:name, :description, :sub_category, :photo)
  end
end
