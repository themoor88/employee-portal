# frozen_string_literal: true
class PagesController < ApplicationController
  def dashboard
  end

  def certification
    @training_stations = current_user.training_stations
  end

  def our_philosophy
  end
end
