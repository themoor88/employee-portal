class AddFieldsToTrainingStations < ActiveRecord::Migration[5.0]
  def change
    add_column :training_stations, :name, :string, after: :id
  end
end
