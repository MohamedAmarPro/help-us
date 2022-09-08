class EventParticipantsController < ApplicationController
    def create
        @event_participant = EventParticipant.new(events_params)
        @event_participant.user = current_user
        @event_participant.save
    
        redirect_to events_path(anchor: "event_#{@event_participant.event.id}")
    end

    def destroy
        @event_participant = EventParticipant.find(params[:id])
        @event_participant.destroy
        redirect_to events_path(status: :see_other, anchor: "event_#{@event_participant.event.id}")
    end
    
    private
    
    def events_params 
        params.permit(:event_id)
    end
end
