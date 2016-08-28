class AddAttachmentToTrainingStation < ActiveRecord::Migration[5.0]
  def change
    add_attachment :training_stations, :handbook_and_guidelines, after: :certified
  end
end
