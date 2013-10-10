class QuestionsController < ApplicationController
	def new
		@question = Question.new
	end

	def create
		Question.create(question_params)
		redirect_to root_path
	end

	def show
		@question = Question.find(params[:id])
	end

  def index
    @questions = Question.all
  end

	private

	def question_params
		params.require(:question).permit(:body, :title)
	end
end