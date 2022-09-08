class EventsController < ApplicationController
  before_action :set_event, only: %I[show destroy edit update]
  skip_before_action :authenticate_user!, only: [:new, :create, :index]

  def index

    if current_user
      @logger = current_user
      @events = Event.near(current_user.address, 50, units: :km)
    elsif current_organization
      @logger = current_organization
      @events = current_organization.events
    else
      authenticate_user!
    end
  end

  def show
    set_event
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params_events)
    @event.organization = current_organization
    if @event.save
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  def edit
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def params_events
    params.require(:event).permit(:name, :description, :address, :start_date, :end_date, photos: [])
  end
end
