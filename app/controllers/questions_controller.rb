class QuestionsController < ApplicationController

  def index
    @plan=Plan.find(params[:plan_id])
    @questions=@plan.questions.order(created_at: :desc)
  end

  def show
    @plan=Plan.find(params[:plan_id])
    @question=@plan.questions.find(params[:id])
    @answer=Answer.new
    @ans=@question.answers
    
  end

  def new
    @plan=Plan.find(params[:plan_id])
    @question = Question.find(params[:id])

  end

  def create
    @plan=Plan.find(params[:plan_id])
    question=@plan.questions.new (question_params)
    if question.save
      redirect_to plan_path(@plan)
    else
      render ""
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def question_params
    params.require(:question).permit(:author,:body)
  end

end
