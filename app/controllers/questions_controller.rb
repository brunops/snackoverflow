class QuestionsController < ApplicationController
	def new
		@question = Question.new
	end

	def create
		Question.create(question_params)
		redirect_to root_path
	end

	def index
		@questions = Question.all
		render :index
	end

	def show
	end

	private

	 def question_params
    params.require(:question).permit(:body)
  end
end