# frozen_string_literal: true
class TrainingStationsController < ApplicationController
  def index
    @training_stations = TrainingStation.all
  end
end
