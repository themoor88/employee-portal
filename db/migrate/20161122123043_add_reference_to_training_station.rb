class AddReferenceToTrainingStation < ActiveRecord::Migration[5.0]
  def change
    add_reference :quizzes, :training_station, index: true
  end
end
