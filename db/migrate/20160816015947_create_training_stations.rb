class CreateTrainingStations < ActiveRecord::Migration[5.0]
  def change
    create_table :training_stations, &:timestamps
  end
end
