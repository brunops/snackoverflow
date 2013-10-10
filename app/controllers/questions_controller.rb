class QuestionsController < ApplicationController
  def new
  end

  def create(params)
    Question.new(params)
    Question.save
  end

  def index
    @questions = Question.all
    render :index
  end

  def show
    @question = Question.find(params[:id])
  end

end