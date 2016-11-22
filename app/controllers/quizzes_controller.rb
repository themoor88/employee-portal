class QuizzesController < ApplicationController
  def index
    @quizzes = TrainingStation.find(params[:training_station_id]).quizzes
  end

  def show
    @quiz = Quiz.find(params[:id])
  end
end
