class CreateTrainingStations < ActiveRecord::Migration[5.0]
  def change
    create_table :training_stations do |t|

      t.timestamps
    end
  end
end
