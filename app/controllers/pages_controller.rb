class PagesController < ApplicationController
  def certification
    @training_stations = TrainingStation.all
  end

  def our_philosophy
  end
end
