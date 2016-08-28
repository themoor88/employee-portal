class AddCertificationToTrainingStation < ActiveRecord::Migration[5.0]
  def change
    add_column :training_stations, :certified, :boolean, default: false, after: :name
  end
end
