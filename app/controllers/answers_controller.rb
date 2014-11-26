class AnswersController < ApplicationController
	before_filter :load_question
	before_filter :restrict_access
	def new
		@answer = @question.answers.build
	end
	
	def create
		@answer = @question.answers.build(answer_params)
		@answer.user = current_user

		if @answer.save
			redirect_to questions_path notice: "You answered!"
		else
			render :new
		end
	end

	def destroy
		@answer = @question.answers.find(params[:id])
		@answer.destroy
		redirect_to question_path(@question)
	end

	protected
		
		def load_question
			@question = Question.find(params[:question_id])
		end
		
		def answer_params
			params.require(:answer).permit(:description, :votes, :question_id, :user_id)
		end
end
