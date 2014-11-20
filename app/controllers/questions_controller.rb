class QuestionsController < ApplicationController

  def index
  	@questions = Question.all
  	@question = Question.new
  	@question.user = current_user
  end

  def show
  	@question = Question.find(params[:id])
  	@answers = @question.answers.all
  end

  def new
  	@question = Question.new
  end

  def create
  	@question = Question.new(question_params)
  	@question.user = current_user

  	if @question.save
  		flash.now[:success] = "Successful submission"
  		redirect_to questions_path
  	else
		flash.now[:error] = "Something went wrong"
  		render :new
  	end
  end

  def destroy
  	@question = Question.find(params[:id])
  	@question.destroy
  end

  def edit
  	@question = Question.find(params[:id])
  	@question.update(question_params)
  	redirect_to questions_path
  end


  protected

  def question_params
  	params.require(:question).permit(:title, :description, :tags, :user_id)
  end
end
