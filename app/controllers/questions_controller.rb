class QuestionsController < ApplicationController

  before_action :authenticate_user!

  def index
    @plan=Plan.find(params[:plan_id])
    @questions=@plan.questions.order(created_at: :desc)
  end

  def show  
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
