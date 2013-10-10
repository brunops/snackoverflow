class AnswersController < ApplicationController

  def create
    Answer.create(answer_params)
  end



  private

  def answer_params
    params.require(:answer).permit(:body)
  end
end