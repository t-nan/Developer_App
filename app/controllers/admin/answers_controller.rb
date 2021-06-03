class Admin::AnswersController < Admin::ApplicationController

  def index
  end

  def show
    @plan=Plan.find(params[:plan_id])
    @flat=@plan.flats.find(params[:flat_id])
    @question=@flat.questions.find(params[:question_id]) 
    @answer=@question.answers.find(params[:id]) 
  end

  def new
  end

  def create
    @plan=Plan.find(params[:plan_id])
    @question=@plan.questions.find(params[:question_id])
    @answer=@question.answers.new (answer_params)

    if @answer.save
      redirect_to admin_plan_question_path(@plan,@question)
    else
      
    end

 

  end

  
  private

  def answer_params
    params.require(:answer).permit(:author,:body)
  end

end
