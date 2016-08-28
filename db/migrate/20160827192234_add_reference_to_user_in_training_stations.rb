class AddReferenceToUserInTrainingStations < ActiveRecord::Migration[5.0]
  def change
    add_reference :training_stations, :user, index: true, after: :id
  end
end
