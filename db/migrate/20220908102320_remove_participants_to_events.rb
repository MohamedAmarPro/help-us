class RemoveParticipantsToEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :participants
  end
end
