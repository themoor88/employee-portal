# frozen_string_literal: true
class TrainingStationsController < ApplicationController
  def index
    @training_stations = current_user.training_stations
  end
end
