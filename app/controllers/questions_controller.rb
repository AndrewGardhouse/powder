class QuestionsController < ApplicationController

  def index
      @question = Question.new
      @question.user = current_user
    if params[:tag]
      @questions = Question.tagged_with(params[:tag])
    else
  	  @questions = Question.paginate(:page => params[:page], :per_page => 10)
    end
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
  	params.require(:question).permit(:title, :description, :tag_list, :user_id)
  end
end
